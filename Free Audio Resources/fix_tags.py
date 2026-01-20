import os
import re
import yaml # Requires 'pip install PyYAML'

# --- CONFIGURATION ---
# Path to your Obsidian Vault ('.' means current directory)
VAULT_PATH = "."

# --- REGEX PATTERNS ---
# Matches YAML front matter bounded by ---
FRONT_MATTER_PATTERN = re.compile(r"^---\n(.*?)\n---", re.DOTALL)

def process_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # 1. Extract Front Matter
    fm_match = FRONT_MATTER_PATTERN.match(content)

    if fm_match:
        yaml_text = fm_match.group(1)
        body = content[fm_match.end():] # Everything after the front matter
        try:
            metadata = yaml.safe_load(yaml_text) or {}
        except yaml.YAMLError:
            print(f"⚠️  Skipping (Invalid YAML): {file_path}")
            return
    else:
        # No front matter to process
        return

    # 2. Process Tags
    # Identify the key used for tags (Obsidian typically uses 'Tags' or 'tags')
    tag_key = None
    if 'Tags' in metadata:
        tag_key = 'Tags'
    elif 'tags' in metadata:
        tag_key = 'tags'
    
    if tag_key and metadata[tag_key]:
        current_tags = metadata[tag_key]
        new_tags = []
        modified = False

        # Ensure tags are a list (handle single string case like "tag1, tag2")
        if isinstance(current_tags, str):
            if ',' in current_tags:
                current_tags = [t.strip() for t in current_tags.split(',')]
            else:
                current_tags = [current_tags]
        
        # Iterate through tags
        if isinstance(current_tags, list):
            for tag in current_tags:
                if isinstance(tag, str):
                    # APPLY TRANSFORMATIONS:
                    # 1. Replace space with dash
                    # 2. Convert to lowercase
                    new_tag = tag.replace(' ', '-').lower()
                    
                    # Check if any change actually happened
                    if new_tag != tag:
                        modified = True
                    
                    new_tags.append(new_tag)
                else:
                    # If tag is a number or other type, leave it as is
                    new_tags.append(tag)
            
            # 3. Write changes if modifications were made
            if modified:
                metadata[tag_key] = new_tags
                
                # Dump YAML (sort_keys=False keeps your insertion order)
                new_yaml = yaml.dump(metadata, allow_unicode=True, sort_keys=False, default_flow_style=False).strip()
                
                # Reconstruct the full file content
                new_content = f"---\n{new_yaml}\n---\n{body}"

                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                print(f"✅ Updated tags (lowercase & dashes) in: {os.path.basename(file_path)}")

def main():
    print("--- Starting Tag Cleanup (Spaces -> Dashes & Lowercase) ---")
    for root, dirs, files in os.walk(VAULT_PATH):
        # Skip .git folders
        if '.git' in dirs:
            dirs.remove('.git')

        for file in files:
            if file.endswith(".md"):
                file_path = os.path.join(root, file)
                process_file(file_path)
    print("--- Process Complete ---")

if __name__ == "__main__":
    main()