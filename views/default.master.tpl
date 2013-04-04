<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   {asset name="Head"}
</head>
<body id="{$BodyID}" class="{$BodyClass}">

   <div class="navbar navbar-static-top">
      <div class="navbar-inner">
         <div class="container">
 
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </a>
    
            <a class="brand" href="{link path="home"}">{logo}</a>
    
            <div class="nav-collapse collapse">
               <ul class="nav">
                  {categories_link}
                  {discussions_link}
                  {activity_link}
               </ul>
               <ul class="nav pull-right">
                  {if $User.SignedIn}                 
                  <li class="divider-vertical"></li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-user"></i> {$User.Name}
                        {if $User.CountNotifications}
                           <span>{$User.CountNotifications}</span>
                        {/if} <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li class="nav-header">{t c="Welcome!"}</li>
                        {profile_link text="Profile"}
                        {inbox_link text="Inbox"}
                        {bookmarks_link text="Bookmarks"}
                        {dashboard_link text="Dashboard"}
                        <li class="divider"></li>
                        <li>{link path="signinout"}</li>
                     </ul>
                  </li>
                  {/if}
                  {if !$User.SignedIn}                
                  <li>
                     <a href="{link path="/entry/register"}"> 
                        <i class="icon-edit"></i> {t c="Sign up"}
                     </a>
                  </li>
                  <li class="divider-vertical"></li>
                  <li>
                     <a href="{link path="/entry/signin"}" class="SignInPopup">
                        {t c="Have an account?"} 
                        <i class="icon-arrow-right"></i> {t c="Sign in"}
                     </a>
                  </li>
                  {/if}
               </ul>
            </div>
 
         </div>
      </div>
   </div>

   <div class="container">

      <div class="row">

         <div class="span12 breadcrumbs">
            {breadcrumbs}
         </div>

      </div>

      <div class="row">

         <div class="span3 panel">
            {asset name="Panel"}
         </div>

         <div class="span9 content">
            {asset name="Content"}
         </div>

      </div>

   </div>

   {asset name="Foot"}
   {event name=AfterBody}
   
</body>
</html>