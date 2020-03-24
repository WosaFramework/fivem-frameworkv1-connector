---
description: >-
  We all have come to an point were we cant figure out were the issue is coming
  from, And yes that happens to wosa sometimes as well. Well, To reduce the
  headache we have done a log system.
---

# Dealing with unexpected errors

![World Of San Andreas - Help the developers to help the framework!](.gitbook/assets/how_to_troubleshoot_sitemaps_banner.jpg)

> If you encounter a error in the framework you can look in the system log file for traces of any error\(s\). When you have worked out the source of the issue or haven't found an issue report it to a developer or a support member.

{% hint style="info" %}
You can find the `Wosa_System_Log file in your wosa_core folder in your FxServer.`
{% endhint %}

### `System Log Codes`

| Framework Startup | Comment |
| :--- | :--- |
| FRAMEWORK\_FILES\_BEGIN\_LOAD | Framework is powering up |
| API\_POWER\_HAS\_BEEN\_CHECKED | API power has been checked and is being powered on. |
| API\_POWER\_HAS\_BEEN\_CHECKED\_GM | API power has been checked and is being powered on is ghost mode. Ghost mode is a feature that makes API console messages not show if they are not classed as important. |
| API\_CLASSES\_INITIALIZED | All API classes have been registered. |

| Framework Warnings & Errors | Comment |
| :--- | :--- |
| FRAMEWORK\_VERSION\_OLD | If framework license covers new updates and not running on latest version. |
| FRAMEWORK\_VERSION\_TO\_GIT\_MISMATCH | A mismatch occurred while checking against github file for the latest version. |
| FRAMEWORK\_NO\_LICENSE\_FOUND | No framework license was found when checked against github. |
| API\_POWER\_SHUTOFF\_UNKOWN | The API main table was destroyed by a unknown reason. |
| API\_CLASSES\_NOT\_LOADED\_AFTER\_10\_SECONDS | API classes not registered after ~10 seconds, This might not be an issue if you have a slow internet connector or a slow computer. Otherwise, Something might be wrong with the class register handler. |
| LIBRARY\_COULD\_NOT\_REMOVE\_USER | If debug mode is on this might happen. Otherwise, It might be a library issue that is occurring. Possible failing to register player in first place. |
| LIBRARY\_COULD\_NOT\_ADD\_USER | This should not occur, And if it does something might be wrong in the library register part. But should not really happen on regular bases. |
| API\_POWER\_SHUTOFF\_BY\_SYSYEM | The API main table was destroyed by the system. |
| FRAMEWORK\_VERSION\_CHECK\_SKIPPED | Usually not really a issue or a warning. This happens if the version checker was skipped. Can happen if the framework license does not support new updates and that is 'normal' then. |
| FRAMEWORK\_HANG\_SERVER | The Framework hang the main server thread. Well, You have to restart the server if you want it running again but this should only occur if you have stolen the files or trying to use a invalid license. |

| Framework Successful Operations | Comment |
| :--- | :--- |
| API\_CONNECTOR\_HOOKED\_RESOURCE | Just means a new resource was connected to the framework core. |
| API\_CONNECTOR\_DISCONNECTED\_RESOURCE | A resource that was connected to the framework core was disconnected. |
| FRAMEWORK\_LICENSE\_FOUND | A valid framework license was found. |
| FRAMEWORK\_ON\_LATEST\_VERSION | The framework is on the latest version. This only logs if you have new updates with your license. |
| FRAMEWORK\_FILES\_SHUTDOWN | Framework/Resource is being shut down. Alternative, resource is being manually stopped or restarted. |
| LIBRARY\_ADD\_USER | A new user was added to the library. |
| LIBRARY\_REMOVE\_USER | A user in the library was removed, 99% of cases it is because the player left the server. |

