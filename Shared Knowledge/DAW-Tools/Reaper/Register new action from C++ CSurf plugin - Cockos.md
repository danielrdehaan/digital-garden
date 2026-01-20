---
title: Register new action from C++ CSurf plugin - Cockos
type: knowledge
status: active
tags:
  - "#type/tutorial"
  - "#topic/daw/reaper"
created: 2026-01-19T15:58:15-06:00
modified: 2026-01-19T20:57:51.612407
---

# Register new action from C++/CSurf plugin? - Cockos Incorporated Forums

**Register new action from C++/CSurf plugin?**

![](https://forums.cockos.com/images/misc/navbits_finallink_ltr.gif)

 04-29-2024, 02:44 PM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**1**](https://forums.cockos.com/showpost.php?p=2779547&postcount=1)

[Reaktor:[Dave]](https://forums.cockos.com/member.php?u=23131)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=23131&dateline=1394577681)

 

Join Date: Jun 2010

Location: Berlin

Posts: 600

 **Register new action from C++/CSurf plugin?**

![](https://forums.cockos.com/images/icons/icon1.gif)

Is there a concise example of how a C++ REAPER SDK control surface plugin can register a new action in REAPER's action list?

Also, what is the best strategy to ensure that the new action can target a specific instance? The idea is to change an instance setting via an action.

  

![](https://forums.cockos.com/images/statusicon/user_offline.gif)

![](https://forums.cockos.com/images/v3img/forum-buttons/quote.gif)

 04-29-2024, 03:28 PM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**2**](https://forums.cockos.com/showpost.php?p=2779555&postcount=2)

[cfillion](https://forums.cockos.com/member.php?u=98780)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=98780&dateline=1568072088)

 

Join Date: May 2015

Location: Québec, Canada

Posts: 5,174

![](https://forums.cockos.com/images/icons/icon1.gif)

Code:

constexpr int SECTION_MAIN { 0 };
static int actionId;
static custom_action_register_t actionReg
{ SECTION_MAIN, "MYEXT_ACTIONID", "My extension: Description of the action"};
static bool commandHook(const int id, [[maybe_unused]] const int flag)
{
if(id == actionId) {
runTheAction();
return true;
}
return false;
}
// global setup
plugin_register("hookcommand", reinterpret_cast<void *>(&commandHook));
// action setup
actionId = plugin_register("custom_action", &actionReg);
// action teardown
plugin_register("-custom_action", &actionReg);
// global teardown
plugin_register("-hookcommand", reinterpret_cast<void *>(&commandHook));

As for the 'targeting a specific instance', maybe register one action per instance and identify it by the action ID?

(The custom_action_register_t doesn't need to be global. I only did that to simplify the example.)

__________________
[💖 Donate (PayPal)](https://reapack.com/donate) | [Sponsor (GitHub)](https://github.com/sponsors/cfillion) | [The Endless Journey (Keyboard Ensemble)](https://www.youtube.com/watch?v=14HOE0w9b9E)
[**ReaPack**, a package manager for REAPER](https://reapack.com/) | SWS 2.14 is now available in ReaPack [new!]
Developer tools: [Lua profiler](https://forums.cockos.com/showthread.php?t=283461) | [Interactive ReaScript](https://forums.cockos.com/showthread.php?t=177324) | [ReaPack Editor](https://reapack.com/upload) | [**ReaImGui**](https://forums.cockos.com/showthread.php?t=250419)

*Last edited by cfillion; 04-29-2024 at 03:34 PM.*

  

![](https://forums.cockos.com/images/statusicon/user_offline.gif)

![](https://forums.cockos.com/images/v3img/forum-buttons/quote.gif)

 05-15-2024, 07:26 AM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**3**](https://forums.cockos.com/showpost.php?p=2782932&postcount=3)

[Reaktor:[Dave]](https://forums.cockos.com/member.php?u=23131)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=23131&dateline=1394577681)

 

Join Date: Jun 2010

Location: Berlin

Posts: 600

![](https://forums.cockos.com/images/icons/icon1.gif)

Thank you so much for your help!

I'm getting an entry in the action list when doing it like you suggested, but when I press on "Run" with the action selected, I'm not receiving a call from REAPER.

Here's a breakdown of how I implemented it:

Code:

// mycontrollerplugin.h
class mycontrollerplugin : public IReaperControlSurface
{
static constexpr int SECTION_MAIN { 0 };
static int actionId;
custom_action_register_t actionReg
{
SECTION_MAIN,
"MYEXT_ACTIONID",
"My extension: Description of the action"
};
static bool commandHook(const int id, [[maybe_unused]] const int flag);
}
// mycontrollerplugin.cpp
bool mycontrollerplugin::commandHook(const int id, const int flag)
{
if (id == actionId)
{
// runTheAction();
return true;
}
return false;
}
int mycontrollerplugin::actionId = 0;
mycontrollerplugin::mycontrollerplugin(
int size,
int indev,
int outdev,
int* errStats)
{
Plugin_Register("hookcommand", reinterpret_cast<void *>(&commandHook));
actionId = Plugin_Register("custom_action", &actionReg);
}
mycontrollerplugin::~mycontrollerplugin()
{
Plugin_Register("-custom_action", &actionReg);
Plugin_Register("-hookcommand", reinterpret_cast<void *>(&commandHook));
}

I'd expect REAPER to call mycontrollerplugin::commandHook() with the parameter "id" set to the actionId that REAPER returned in the class constructor when I run the registered action from the action list. But it never calls that function. Only when quitting REAPER, it'll call mycontrollerplugin::commandHook().

Any idea what I'm doing wrong here?

  

![](https://forums.cockos.com/images/statusicon/user_offline.gif)

![](https://forums.cockos.com/images/v3img/forum-buttons/quote.gif)

 05-18-2024, 01:51 AM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**4**](https://forums.cockos.com/showpost.php?p=2783473&postcount=4)

[Reaktor:[Dave]](https://forums.cockos.com/member.php?u=23131)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=23131&dateline=1394577681)

 

Join Date: Jun 2010

Location: Berlin

Posts: 600

![](https://forums.cockos.com/images/icons/icon1.gif)

I debugged this a bit more.

1. Registering the hookcommand in the constructor returns an int value of 1. I guess that means success? It's not defined in reaper_plugin.h

2. Registering the custom action returns an int (59001 in my case) that can be used to identify the registered action later when hookcommand is called. Does that seem alright?

3. While the registered static function commandHook is never called when running the new action from the action list, the function gets called on other events:

- opening the action list window (id 40605)
- creating a new track (id 40001)
- closing the project right before the save-on-exit-dialog (40004)

This implies that the registration of the command hook was successful. Maybe there was an issue when registering the new action?

  

![](https://forums.cockos.com/images/statusicon/user_offline.gif)

![](https://forums.cockos.com/images/v3img/forum-buttons/quote.gif)

 05-18-2024, 02:07 AM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**5**](https://forums.cockos.com/showpost.php?p=2783477&postcount=5)

[cfillion](https://forums.cockos.com/member.php?u=98780)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=98780&dateline=1568072088)

 

Join Date: May 2015

Location: Québec, Canada

Posts: 5,174

![](https://forums.cockos.com/images/icons/icon1.gif)

Oops, actions registered with custom_action only run hookcommand2. hookcommand gets called for native main section actions or extension actions registered with command_id+gaccel.

Code:

bool hookCommand2(KbdSectionInfo *sec, int command, int val, int val2, int relmode, HWND hwnd);

![](https://i.imgur.com/HoZrDo2.gif)

For reference, the command_id+gaccel way is pretty similar, except it's main section only, can specify a default shortcut and the gaccel_register_t's lifetime must be as long as the action is registered (custom_action_t may be temporary).

Code:

static gaccel_register_t cmd;
cmd.accel.cmd = plugin_register("command_id", "ACTION_ID");
cmd.desc = "Description of the action";
plugin_register("gaccel", &cmd);

__________________
[💖 Donate (PayPal)](https://reapack.com/donate) | [Sponsor (GitHub)](https://github.com/sponsors/cfillion) | [The Endless Journey (Keyboard Ensemble)](https://www.youtube.com/watch?v=14HOE0w9b9E)
[**ReaPack**, a package manager for REAPER](https://reapack.com/) | SWS 2.14 is now available in ReaPack [new!]
Developer tools: [Lua profiler](https://forums.cockos.com/showthread.php?t=283461) | [Interactive ReaScript](https://forums.cockos.com/showthread.php?t=177324) | [ReaPack Editor](https://reapack.com/upload) | [**ReaImGui**](https://forums.cockos.com/showthread.php?t=250419)

*Last edited by cfillion; 05-18-2024 at 02:13 AM.*

  

![](https://forums.cockos.com/images/statusicon/user_offline.gif)

![](https://forums.cockos.com/images/v3img/forum-buttons/quote.gif)

 05-18-2024, 02:24 PM

![](https://forums.cockos.com/images/statusicon/post_old.gif)

  #[**6**](https://forums.cockos.com/showpost.php?p=2783588&postcount=6)

[Reaktor:[Dave]](https://forums.cockos.com/member.php?u=23131)

Human being with feelings

 

[](https://forums.cockos.com/image.php?u=23131&dateline=1394577681)

 

Join Date: Jun 2010

Location: Berlin

Posts: 600

![](https://forums.cockos.com/images/icons/icon1.gif)

Ah, that makes it all work! Thank you so much!

Here's how to make my previous example work:

Code:

// mycontrollerplugin.h
class mycontrollerplugin : public IReaperControlSurface
{
static constexpr int SECTION_MAIN { 0 };
static int actionId;
custom_action_register_t actionReg
{
SECTION_MAIN,
"MYEXT_ACTIONID",
"My extension: Description of the action"
};
static bool commandHook2(KbdSectionInfo *sec, int command, int val, int val2, int relmode, HWND hwnd);
}
// mycontrollerplugin.cpp
bool mycontrollerplugin::commandHook2(KbdSectionInfo *sec, int command, int val, int val2, int relmode, HWND hwnd)
{
if (command == actionId)
{
// runTheAction();
return true;
}
return false;
}
int mycontrollerplugin::actionId = 0;
mycontrollerplugin::mycontrollerplugin(
int size,
int indev,
int outdev,
int* errStats)
{
Plugin_Register("hookcommand2", reinterpret_cast<void *>(&commandHook2));
actionId = Plugin_Register("custom_action", &actionReg);
}
mycontrollerplugin::~mycontrollerplugin()
{
Plugin_Register("-custom_action", &actionReg);
Plugin_Register("-hookcommand", reinterpret_cast<void *>(&commandHook2));
}

Targeting specific instances can be done as suggested previously, by doing the action setup per instance and storing the return value from Plugin_Register("custom_action", ...) in a static map with the corresponding function pointer.

*Last edited by Reaktor:[Dave]; 05-19-2024 at 04:54 AM.*