#Welcome to WCell!

You can find our website at http://wcell.org/

After downloading please follow the [Basic Setup](http://wiki.wcell.org/Basic_Setup) guide.
If you are looking for some random bits and pieces about the project feel free to browse our [wiki](http://wiki.wcell.org/).

WCell focuses on a high degree of maintainability and customizability. It's clean codebase ensures that bugs can be fixed quickly and regressions are minimized.

###Strong points

* Very powerful subsystems (see [WCell API](http://wiki.wcell.org/WCell_API) for a simple overview over the API)  .
     * [Spells](http://wiki.wcell.org/API:Spells).
     * [Instances](http://wiki.wcell.org/API:Instances).
     * [Gossip Menus](http://wiki.wcell.org/API:Gossip_Menus).
     * [Addons](http://wiki.wcell.org/WCell_Addons).
     * [More](http://wiki.wcell.org/API:World).
* The simple but yet easily extendable command system.  
* The good support  
   * Post a question at our [forum](http://wcell.org/forum/).  
   * Or join us on [IRC](http://wiki.wcell.org/WCell_Wiki:Community_Portal).

###Feature completeness 

All features are implemented up to a certain degree where some work very well and some are untested (but probably can be easily made fit, once tested).


###New

Setup DB:

1. Run scripts from Database\Current_Release\Full_DB\ForCleanInstallOnly
2. use wcell_realm; source Database\Current_Release\Full_DB\UDB_0.12.2_mangos_11792_SD2_2279.sql
3. Skip 4 and 5 for now...
4. Run merge scripts from Database\Current_Release and use wcell_characters; source ALL_characters_updates.sql, and use wcell_ream; source ALL_realm_updates.sql
5. Run merge script from Database and use wcell_realm; source ALL_realm_updates2.sql

Compile core...

Replace MySql.Data.dll with yours from e.g. C:\Program Files (x86)\MySQL\MySQL Connector NET 8.0.33.1

Run these two exe files located in WCell\Run\Debug to generate configs and then adjust them if needed:

WCell.AuthServerConsole.exe

WCell.RealmServerConsole.exe

After you created a character and logged in you have to type ".load all" in the
chat, so the server knows he has to load the content (you can also configure
that it should load the content automatically). Use .load all from realmserverconsole...

To create account, you need to run commands from the authserverconsole.

Some commands:

.level 80

.item add 46308

.respawn

.skills

.spell add 44425

.npc add 11502

.?
