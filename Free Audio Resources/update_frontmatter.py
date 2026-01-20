import os
import re
import yaml # Requires 'pip install PyYAML'

# --- CONFIGURATION ---
# Path to your Obsidian Vault ('.' means current directory)
VAULT_PATH = "." 

# The standard order you want for your metadata
# Any fields found in the file not listed here will be added at the end.
STANDARD_ORDER = [
    "base",
    "URL",
    "Image",
    "Date Added",
    "Tags",
    "🌟",
    "Last Edited"
]

# --- REGEX PATTERNS ---
# Matches YAML front matter bounded by ---
FRONT_MATTER_PATTERN = re.compile(r"^---\n(.*?)\n---", re.DOTALL)

# Matches ![[image.png]] or ![[image.png|100]]
OBSIDIAN_IMG_PATTERN = re.compile(r"!\[\[(.*?)(?:\|.*?)?\]\]")

# Matches ![](url) or ![alt](url)
MARKDOWN_IMG_PATTERN = re.compile(r"!\[.*?\]\((.*?)\)")

def get_first_image(content):
    """Finds the first image link (Obsidian or Standard) in the markdown content."""
    
    # Search for both types of image tags
    obsidian_match = OBSIDIAN_IMG_PATTERN.search(content)
    markdown_match = MARKDOWN_IMG_PATTERN.search(content)

    # Determine which one appears first in the text
    pos_obsidian = obsidian_match.start() if obsidian_match else float('inf')
    pos_markdown = markdown_match.start() if markdown_match else float('inf')

    if pos_obsidian == float('inf') and pos_markdown == float('inf'):
        return None

    if pos_obsidian < pos_markdown:
        # Return the filename from ![[filename]]
        return obsidian_match.group(1)
    else:
        # Return the URL from ![](url)
        return markdown_match.group(1)

def process_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # 1. Extract Front Matter
    fm_match = FRONT_MATTER_PATTERN.match(content)
    
    if fm_match:
        yaml_text = fm_match.group(1)
        body = content[fm_match.end():]
        try:
            metadata = yaml.safe_load(yaml_text) or {}
        except yaml.YAMLError:
            print(f"⚠️  Skipping (Invalid YAML): {file_path}")
            return
    else:
        # File has no front matter, create empty
        metadata = {}
        body = content

    # 2. Find Image in Body
    image_url = get_first_image(body)

    if image_url:
        metadata['Image'] = image_url
        print(f"✅ Found Image for: {os.path.basename(file_path)}")
    else:
        print(f"ℹ️  No image found in: {os.path.basename(file_path)}")

    # 3. Standardize Order
    new_metadata = {}
    
    # Add keys in standard order if they exist
    for key in STANDARD_ORDER:
        if key in metadata:
            new_metadata[key] = metadata.pop(key)
    
    # Add any remaining custom keys
    new_metadata.update(metadata)

    # 4. Reconstruct File
    # dump(sort_keys=False) keeps our insertion order
    new_yaml = yaml.dump(new_metadata, allow_unicode=True, sort_keys=False, default_flow_style=False).strip()
    
    new_content = f"---\n{new_yaml}\n---\n{body}" # Note: body includes leading newlines usually, might need strip() depending on preference

    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(new_content)

def main():
    print("--- Starting Front Matter Standardization ---")
    for root, dirs, files in os.walk(VAULT_PATH):
        # Skip .git folders if present
        if '.git' in dirs:
            dirs.remove('.git')
            
        for file in files:
            if file.endswith(".md"):
                file_path = os.path.join(root, file)
                process_file(file_path)
    print("--- Process Complete ---")

if __name__ == "__main__":
    main()