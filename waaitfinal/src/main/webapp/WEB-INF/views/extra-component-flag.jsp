<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flag - Mazer Admin Dashboard</title>
    
    <link rel="shortcut icon" href="data:image/svg+xml,%3csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2033%2034'%20fill-rule='evenodd'%20stroke-linejoin='round'%20stroke-miterlimit='2'%20xmlns:v='https://vecta.io/nano'%3e%3cpath%20d='M3%2027.472c0%204.409%206.18%205.552%2013.5%205.552%207.281%200%2013.5-1.103%2013.5-5.513s-6.179-5.552-13.5-5.552c-7.281%200-13.5%201.103-13.5%205.513z'%20fill='%23435ebe'%20fill-rule='nonzero'/%3e%3ccircle%20cx='16.5'%20cy='8.8'%20r='8.8'%20fill='%2341bbdd'/%3e%3c/svg%3e" type="image/x-icon">
    <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACEAAAAiCAYAAADRcLDBAAAEs2lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS41LjAiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iCiAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIKICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIgogICAgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIKICAgZXhpZjpQaXhlbFhEaW1lbnNpb249IjMzIgogICBleGlmOlBpeGVsWURpbWVuc2lvbj0iMzQiCiAgIGV4aWY6Q29sb3JTcGFjZT0iMSIKICAgdGlmZjpJbWFnZVdpZHRoPSIzMyIKICAgdGlmZjpJbWFnZUxlbmd0aD0iMzQiCiAgIHRpZmY6UmVzb2x1dGlvblVuaXQ9IjIiCiAgIHRpZmY6WFJlc29sdXRpb249Ijk2LjAiCiAgIHRpZmY6WVJlc29sdXRpb249Ijk2LjAiCiAgIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiCiAgIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIKICAgeG1wOk1vZGlmeURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiCiAgIHhtcDpNZXRhZGF0YURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiPgogICA8eG1wTU06SGlzdG9yeT4KICAgIDxyZGY6U2VxPgogICAgIDxyZGY6bGkKICAgICAgc3RFdnQ6YWN0aW9uPSJwcm9kdWNlZCIKICAgICAgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWZmaW5pdHkgRGVzaWduZXIgMS4xMC4xIgogICAgICBzdEV2dDp3aGVuPSIyMDIyLTAzLTMxVDEwOjUwOjIzKzAyOjAwIi8+CiAgICA8L3JkZjpTZXE+CiAgIDwveG1wTU06SGlzdG9yeT4KICA8L3JkZjpEZXNjcmlwdGlvbj4KIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBhY2tldCBlbmQ9InIiPz5V57uAAAABgmlDQ1BzUkdCIElFQzYxOTY2LTIuMQAAKJF1kc8rRFEUxz9maORHo1hYKC9hISNGTWwsRn4VFmOUX5uZZ36oeTOv954kW2WrKLHxa8FfwFZZK0WkZClrYoOe87ypmWTO7dzzud97z+nec8ETzaiaWd4NWtYyIiNhZWZ2TvE946WZSjqoj6mmPjE1HKWkfdxR5sSbgFOr9Ll/rXoxYapQVik8oOqGJTwqPL5i6Q5vCzeo6dii8KlwpyEXFL519LjLLw6nXP5y2IhGBsFTJ6ykijhexGra0ITl5bRqmWU1fx/nJTWJ7PSUxBbxJkwijBBGYYwhBgnRQ7/MIQIE6ZIVJfK7f/MnyUmuKrPOKgZLpEhj0SnqslRPSEyKnpCRYdXp/9++msneoFu9JgwVT7b91ga+LfjetO3PQ9v+PgLvI1xkC/m5A+h7F32zoLXug38dzi4LWnwHzjeg8UGPGbFfySvuSSbh9QRqZ6H+Gqrm3Z7l9zm+h+iafNUV7O5Bu5z3L/wAdthn7QIme0YAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAJTSURBVFiF7Zi9axRBGIefEw2IdxFBRQsLWUTBaywSK4ubdSGVIY1Y6HZql8ZKCGIqwX/AYLmCgVQKfiDn7jZeEQMWfsSAHAiKqPiB5mIgELWYOW5vzc3O7niHhT/YZvY37/swM/vOzJbIqVq9uQ04CYwCI8AhYAlYAB4Dc7HnrOSJWcoJcBS4ARzQ2F4BZ2LPmTeNuykHwEWgkQGAet9QfiMZjUSt3hwD7psGTWgs9pwH1hC1enMYeA7sKwDxBqjGnvNdZzKZjqmCAKh+U1kmEwi3IEBbIsugnY5avTkEtIAtFhBrQCX2nLVehqyRqFoCAAwBh3WGLAhbgCRIYYinwLolwLqKUwwi9pxV4KUlxKKKUwxC6ZElRCPLYAJxGfhSEOCz6m8HEXvOB2CyIMSk6m8HoXQTmMkJcA2YNTHm3congOvATo3tE3A29pxbpnFzQSiQPcB55IFmFNgFfEQeahaAGZMpsIJIAZWAHcDX2HN+2cT6r39GxmvC9aPNwH5gO1BOPFuBVWAZue0vA9+A12EgjPadnhCuH1WAE8ivYAQ4ohKaagV4gvxi5oG7YSA2vApsCOH60WngKrA3R9IsvQUuhIGY00K4flQG7gHH/mLytB4C42EgfrQb0mV7us8AAMeBS8mGNMR4nwHamtBB7B4QRNdaS0M8GxDEog7iyoAguvJ0QYSBuAOcAt71Kfl7wA8DcTvZ2KtOlJEr+ByyQtqqhTyHTIeB+ONeqi3brh+VgIN0fohUgWGggizZFTplu12yW8iy/YLOGWMpDMTPXnl+Az9vj2HERYqPAAAAAElFTkSuQmCC" type="image/png">
    

  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/extra-component-flag.css">
  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/app.css">
  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/app-dark.css">
</head>

<body>
    <script src="${path }/resources/assets/static/js/initTheme.js"></script>
    <div id="app">
        <div id="sidebar">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header position-relative">
        <div class="d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="index.html"><img src="data:image/svg+xml,%3csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20152%2034'%20fill-rule='evenodd'%20stroke-linejoin='round'%20stroke-miterlimit='2'%3e%3cpath%20d='M0%2027.472c0%204.409%206.18%205.552%2013.5%205.552%207.281%200%2013.5-1.103%2013.5-5.513s-6.179-5.552-13.5-5.552c-7.281%200-13.5%201.103-13.5%205.513z'%20fill='%23435ebe'%20fill-rule='nonzero'/%3e%3ccircle%20cx='13.5'%20cy='8.8'%20r='8.8'%20fill='%2341bbdd'/%3e%3cpath%20d='M71.676%203.22c.709%200%201.279.228%201.71.684.431.431.646%201.013.646%201.748v22.496c0%20.709-.203%201.267-.608%201.672s-.937.608-1.596.608-1.178-.203-1.558-.608-.57-.963-.57-1.672V12.492l-6.46%2012.236c-.304.557-.633.975-.988%201.254-.355.253-.773.38-1.254.38s-.899-.127-1.254-.38-.684-.671-.988-1.254l-6.498-12.046v15.466c0%20.684-.203%201.241-.608%201.672-.38.405-.899.608-1.558.608s-1.178-.203-1.558-.608-.57-.963-.57-1.672V5.652c0-.735.203-1.317.608-1.748.431-.456%201.001-.684%201.71-.684.988%200%201.761.545%202.318%201.634l8.436%2016.074%208.398-16.074c.557-1.089%201.305-1.634%202.242-1.634zm15.801%207.942c2.584%200%204.497.646%205.738%201.938%201.267%201.267%201.9%203.205%201.9%205.814v9.272c0%20.684-.203%201.229-.608%201.634-.405.38-.962.57-1.672.57-.658%200-1.203-.203-1.634-.608-.405-.405-.608-.937-.608-1.596v-.836c-.431.988-1.114%201.761-2.052%202.318-.912.557-1.976.836-3.192.836-1.241%200-2.368-.253-3.382-.76s-1.811-1.203-2.394-2.09-.874-1.875-.874-2.964c0-1.368.342-2.445%201.026-3.23.71-.785%201.85-1.355%203.42-1.71s3.737-.532%206.498-.532h.95v-.874c0-1.241-.266-2.141-.798-2.698-.532-.583-1.393-.874-2.584-.874a7.78%207.78%200%200%200-2.242.342c-.76.203-1.659.507-2.698.912-.658.329-1.14.494-1.444.494-.456%200-.836-.165-1.14-.494-.278-.329-.418-.76-.418-1.292%200-.431.102-.798.304-1.102.228-.329.596-.633%201.102-.912.887-.481%201.938-.861%203.154-1.14%201.242-.279%202.458-.418%203.648-.418zm-1.178%2015.922c1.267%200%202.293-.418%203.078-1.254.811-.861%201.216-1.963%201.216-3.306v-.798h-.684c-1.697%200-3.015.076-3.952.228s-1.608.418-2.014.798-.608.899-.608%201.558c0%20.811.279%201.482.836%202.014.583.507%201.292.76%202.128.76zm27.476-.456c1.418%200%202.128.595%202.128%201.786%200%20.557-.178%201.001-.532%201.33-.355.304-.887.456-1.596.456h-12.692c-.634%200-1.153-.203-1.558-.608a1.97%201.97%200%200%201-.608-1.444c0-.583.228-1.14.684-1.672l9.766-11.286h-8.474c-.71%200-1.242-.152-1.596-.456s-.532-.747-.532-1.33.177-1.026.532-1.33.886-.456%201.596-.456h12.274c.658%200%201.178.203%201.558.608.405.38.608.861.608%201.444%200%20.608-.216%201.165-.646%201.672l-9.804%2011.286h8.892zm19.762-1.52c.431%200%20.773.165%201.026.494.279.329.418.773.418%201.33%200%20.785-.468%201.444-1.406%201.976-.861.481-1.836.874-2.926%201.178-1.089.279-2.128.418-3.116.418-2.989%200-5.358-.861-7.106-2.584s-2.622-4.079-2.622-7.068c0-1.9.38-3.585%201.14-5.054s1.824-2.609%203.192-3.42c1.394-.811%202.964-1.216%204.712-1.216%201.672%200%203.129.367%204.37%201.102s2.204%201.773%202.888%203.116%201.026%202.926%201.026%204.75c0%201.089-.481%201.634-1.444%201.634h-11.21c.152%201.748.646%203.04%201.482%203.876.836.811%202.052%201.216%203.648%201.216.811%200%201.52-.101%202.128-.304.634-.203%201.343-.481%202.128-.836.76-.405%201.318-.608%201.672-.608zm-6.574-10.602c-1.292%200-2.33.405-3.116%201.216-.76.811-1.216%201.976-1.368%203.496h8.588c-.05-1.545-.43-2.711-1.14-3.496-.709-.811-1.697-1.216-2.964-1.216zm22.43-3.268c.658-.051%201.178.089%201.558.418s.57.823.57%201.482c0%20.684-.165%201.191-.494%201.52s-.925.545-1.786.646l-1.14.114c-1.495.152-2.597.659-3.306%201.52-.684.861-1.026%201.938-1.026%203.23v7.98c0%20.735-.228%201.305-.684%201.71-.456.38-1.026.57-1.71.57s-1.254-.19-1.71-.57c-.431-.405-.646-.975-.646-1.71V13.442c0-.709.215-1.254.646-1.634.456-.38%201.013-.57%201.672-.57s1.19.19%201.596.57c.405.355.608.874.608%201.558v1.52c.481-1.115%201.19-1.976%202.128-2.584.962-.608%202.026-.95%203.192-1.026l.532-.038z'%20fill='%23435ebe'%20fill-rule='nonzero'/%3e%3c/svg%3e" alt="Logo" srcset=""></a>
            </div>
            <div class="theme-toggle d-flex gap-2  align-items-center mt-2">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" class="iconify iconify--system-uicons" width="20" height="20"
                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 21 21">
                    <g fill="none" fill-rule="evenodd" stroke="currentColor" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path
                            d="M10.5 14.5c2.219 0 4-1.763 4-3.982a4.003 4.003 0 0 0-4-4.018c-2.219 0-4 1.781-4 4c0 2.219 1.781 4 4 4zM4.136 4.136L5.55 5.55m9.9 9.9l1.414 1.414M1.5 10.5h2m14 0h2M4.135 16.863L5.55 15.45m9.899-9.9l1.414-1.415M10.5 19.5v-2m0-14v-2"
                            opacity=".3"></path>
                        <g transform="translate(-210 -1)">
                            <path d="M220.5 2.5v2m6.5.5l-1.5 1.5"></path>
                            <circle cx="220.5" cy="11.5" r="4"></circle>
                            <path d="m214 5l1.5 1.5m5 14v-2m6.5-.5l-1.5-1.5M214 18l1.5-1.5m-4-5h2m14 0h2"></path>
                        </g>
                    </g>
                </svg>
                <div class="form-check form-switch fs-6">
                    <input class="form-check-input  me-0" type="checkbox" id="toggle-dark" style="cursor: pointer">
                    <label class="form-check-label"></label>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                    role="img" class="iconify iconify--mdi" width="20" height="20" preserveAspectRatio="xMidYMid meet"
                    viewBox="0 0 24 24">
                    <path fill="currentColor"
                        d="m17.75 4.09l-2.53 1.94l.91 3.06l-2.63-1.81l-2.63 1.81l.91-3.06l-2.53-1.94L12.44 4l1.06-3l1.06 3l3.19.09m3.5 6.91l-1.64 1.25l.59 1.98l-1.7-1.17l-1.7 1.17l.59-1.98L15.75 11l2.06-.05L18.5 9l.69 1.95l2.06.05m-2.28 4.95c.83-.08 1.72 1.1 1.19 1.85c-.32.45-.66.87-1.08 1.27C15.17 23 8.84 23 4.94 19.07c-3.91-3.9-3.91-10.24 0-14.14c.4-.4.82-.76 1.27-1.08c.75-.53 1.93.36 1.85 1.19c-.27 2.86.69 5.83 2.89 8.02a9.96 9.96 0 0 0 8.02 2.89m-1.64 2.02a12.08 12.08 0 0 1-7.8-3.47c-2.17-2.19-3.33-5-3.49-7.82c-2.81 3.14-2.7 7.96.31 10.98c3.02 3.01 7.84 3.12 10.98.31Z">
                    </path>
                </svg>
            </div>
            <div class="sidebar-toggler  x">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>
            
            <li
                class="sidebar-item  ">
                <a href="index.html" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-stack"></i>
                    <span>Components</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="component-accordion.html" class="submenu-link">Accordion</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-alert.html" class="submenu-link">Alert</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-badge.html" class="submenu-link">Badge</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-breadcrumb.html" class="submenu-link">Breadcrumb</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-button.html" class="submenu-link">Button</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-card.html" class="submenu-link">Card</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-carousel.html" class="submenu-link">Carousel</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-collapse.html" class="submenu-link">Collapse</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-dropdown.html" class="submenu-link">Dropdown</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-list-group.html" class="submenu-link">List Group</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-modal.html" class="submenu-link">Modal</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-navs.html" class="submenu-link">Navs</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-pagination.html" class="submenu-link">Pagination</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-placeholder.html" class="submenu-link">Placeholder</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-progress.html" class="submenu-link">Progress</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-spinner.html" class="submenu-link">Spinner</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-toasts.html" class="submenu-link">Toasts</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="component-tooltip.html" class="submenu-link">Tooltip</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item active has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-collection-fill"></i>
                    <span>Extra Components</span>
                </a>
                
                <ul class="submenu active">
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-avatar.html" class="submenu-link">Avatar</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-comment.html" class="submenu-link">Comment</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-divider.html" class="submenu-link">Divider</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-date-picker.html" class="submenu-link">Date Picker</a>
                        
                    </li>
                    
                    <li class="submenu-item active ">
                        <a href="extra-component-flag.html" class="submenu-link">Flag</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-sweetalert.html" class="submenu-link">Sweet Alert</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-toastify.html" class="submenu-link">Toastify</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="extra-component-rating.html" class="submenu-link">Rating</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-grid-1x2-fill"></i>
                    <span>Layouts</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="layout-default.html" class="submenu-link">Default Layout</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="layout-vertical-1-column.html" class="submenu-link">1 Column</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="layout-vertical-navbar.html" class="submenu-link">Vertical Navbar</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="layout-rtl.html" class="submenu-link">RTL Layout</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="layout-horizontal.html" class="submenu-link">Horizontal Menu</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li class="sidebar-title">Forms &amp; Tables</li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-hexagon-fill"></i>
                    <span>Form Elements</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="form-element-input.html" class="submenu-link">Input</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-element-input-group.html" class="submenu-link">Input Group</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-element-select.html" class="submenu-link">Select</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-element-radio.html" class="submenu-link">Radio</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-element-checkbox.html" class="submenu-link">Checkbox</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-element-textarea.html" class="submenu-link">Textarea</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="form-layout.html" class='sidebar-link'>
                    <i class="bi bi-file-earmark-medical-fill"></i>
                    <span>Form Layout</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-journal-check"></i>
                    <span>Form Validation</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="form-validation-parsley.html" class="submenu-link">Parsley</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-pen-fill"></i>
                    <span>Form Editor</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="form-editor-quill.html" class="submenu-link">Quill</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-editor-ckeditor.html" class="submenu-link">CKEditor</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-editor-summernote.html" class="submenu-link">Summernote</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="form-editor-tinymce.html" class="submenu-link">TinyMCE</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="table.html" class='sidebar-link'>
                    <i class="bi bi-grid-1x2-fill"></i>
                    <span>Table</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-file-earmark-spreadsheet-fill"></i>
                    <span>Datatables</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="table-datatable.html" class="submenu-link">Datatable</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="table-datatable-jquery.html" class="submenu-link">Datatable (jQuery)</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li class="sidebar-title">Extra UI</li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-pentagon-fill"></i>
                    <span>Widgets</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="ui-widgets-chatbox.html" class="submenu-link">Chatbox</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-widgets-pricing.html" class="submenu-link">Pricing</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-widgets-todolist.html" class="submenu-link">To-do List</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-egg-fill"></i>
                    <span>Icons</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="ui-icons-bootstrap-icons.html" class="submenu-link">Bootstrap Icons </a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-icons-fontawesome.html" class="submenu-link">Fontawesome</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-icons-dripicons.html" class="submenu-link">Dripicons</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-bar-chart-fill"></i>
                    <span>Charts</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="ui-chart-chartjs.html" class="submenu-link">ChartJS</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-chart-apexcharts.html" class="submenu-link">Apexcharts</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="ui-file-uploader.html" class='sidebar-link'>
                    <i class="bi bi-cloud-arrow-up-fill"></i>
                    <span>File Uploader</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-map-fill"></i>
                    <span>Maps</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="ui-map-google-map.html" class="submenu-link">Google Map</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="ui-map-jsvectormap.html" class="submenu-link">JS Vector Map</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-three-dots"></i>
                    <span>Multi-level Menu</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  has-sub">
                        <a href="#" class="submenu-link">First Level</a>
                        
                        <ul class="submenu submenu-level-2 ">

                            
                            <li class="submenu-item ">
                                <a href="ui-multi-level-menu.html" class="submenu-link">Second Level</a>
                            </li>
                            

                        </ul>
                        
                    </li>
                    
                    <li class="submenu-item  has-sub">
                        <a href="#" class="submenu-link">Another Menu</a>
                        
                        <ul class="submenu submenu-level-2 ">

                            
                            <li class="submenu-item ">
                                <a href="ui-multi-level-menu.html" class="submenu-link">Second Level Menu</a>
                            </li>
                            

                        </ul>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li class="sidebar-title">Pages</li>
            
            <li
                class="sidebar-item  ">
                <a href="application-email.html" class='sidebar-link'>
                    <i class="bi bi-envelope-fill"></i>
                    <span>Email Application</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="application-chat.html" class='sidebar-link'>
                    <i class="bi bi-chat-dots-fill"></i>
                    <span>Chat Application</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="application-gallery.html" class='sidebar-link'>
                    <i class="bi bi-image-fill"></i>
                    <span>Photo Gallery</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="application-checkout.html" class='sidebar-link'>
                    <i class="bi bi-basket-fill"></i>
                    <span>Checkout Page</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-person-circle"></i>
                    <span>Account</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="account-profile.html" class="submenu-link">Profile</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="account-security.html" class="submenu-link">Security</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-person-badge-fill"></i>
                    <span>Authentication</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="auth-login.html" class="submenu-link">Login</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="auth-register.html" class="submenu-link">Register</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="auth-forgot-password.html" class="submenu-link">Forgot Password</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-x-octagon-fill"></i>
                    <span>Errors</span>
                </a>
                
                <ul class="submenu ">
                    
                    <li class="submenu-item  ">
                        <a href="error-403.html" class="submenu-link">403</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="error-404.html" class="submenu-link">404</a>
                        
                    </li>
                    
                    <li class="submenu-item  ">
                        <a href="error-500.html" class="submenu-link">500</a>
                        
                    </li>
                    
                </ul>
                

            </li>
            
            <li class="sidebar-title">Raise Support</li>
            
            <li
                class="sidebar-item  ">
                <a href="https://zuramai.github.io/mazer/docs" class='sidebar-link'>
                    <i class="bi bi-life-preserver"></i>
                    <span>Documentation</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="https://github.com/zuramai/mazer/blob/main/CONTRIBUTING.md" class='sidebar-link'>
                    <i class="bi bi-puzzle"></i>
                    <span>Contribute</span>
                </a>
                

            </li>
            
            <li
                class="sidebar-item  ">
                <a href="https://github.com/zuramai/mazer#donation" class='sidebar-link'>
                    <i class="bi bi-cash"></i>
                    <span>Donate</span>
                </a>
                

            </li>
            
        </ul>
    </div>
</div>
        </div>
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Flag</h3>
                <p class="text-subtitle text-muted">
                    A flag that can represent a country or flag visually.
                </p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Flag</li>
                    </ol> 
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">List of all flags</h4>
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Flag</th>
                            <th>Code</th>
                            <th>Usage</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td><span class="flag flag-country-ad"></span></td>
                            <td><code>ad</code></td>
                            <td><code>.flag-country-ad</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ae"></span></td>
                            <td><code>ae</code></td>
                            <td><code>.flag-country-ae</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-af"></span></td>
                            <td><code>af</code></td>
                            <td><code>.flag-country-af</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ag"></span></td>
                            <td><code>ag</code></td>
                            <td><code>.flag-country-ag</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ai"></span></td>
                            <td><code>ai</code></td>
                            <td><code>.flag-country-ai</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-al"></span></td>
                            <td><code>al</code></td>
                            <td><code>.flag-country-al</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-am"></span></td>
                            <td><code>am</code></td>
                            <td><code>.flag-country-am</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ao"></span></td>
                            <td><code>ao</code></td>
                            <td><code>.flag-country-ao</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-aq"></span></td>
                            <td><code>aq</code></td>
                            <td><code>.flag-country-aq</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ar"></span></td>
                            <td><code>ar</code></td>
                            <td><code>.flag-country-ar</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-as"></span></td>
                            <td><code>as</code></td>
                            <td><code>.flag-country-as</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-at"></span></td>
                            <td><code>at</code></td>
                            <td><code>.flag-country-at</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-au"></span></td>
                            <td><code>au</code></td>
                            <td><code>.flag-country-au</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-aw"></span></td>
                            <td><code>aw</code></td>
                            <td><code>.flag-country-aw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ax"></span></td>
                            <td><code>ax</code></td>
                            <td><code>.flag-country-ax</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-az"></span></td>
                            <td><code>az</code></td>
                            <td><code>.flag-country-az</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ba"></span></td>
                            <td><code>ba</code></td>
                            <td><code>.flag-country-ba</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bb"></span></td>
                            <td><code>bb</code></td>
                            <td><code>.flag-country-bb</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bd"></span></td>
                            <td><code>bd</code></td>
                            <td><code>.flag-country-bd</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-be"></span></td>
                            <td><code>be</code></td>
                            <td><code>.flag-country-be</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bf"></span></td>
                            <td><code>bf</code></td>
                            <td><code>.flag-country-bf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bg"></span></td>
                            <td><code>bg</code></td>
                            <td><code>.flag-country-bg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bh"></span></td>
                            <td><code>bh</code></td>
                            <td><code>.flag-country-bh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bi"></span></td>
                            <td><code>bi</code></td>
                            <td><code>.flag-country-bi</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bj"></span></td>
                            <td><code>bj</code></td>
                            <td><code>.flag-country-bj</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bl"></span></td>
                            <td><code>bl</code></td>
                            <td><code>.flag-country-bl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bm"></span></td>
                            <td><code>bm</code></td>
                            <td><code>.flag-country-bm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bn"></span></td>
                            <td><code>bn</code></td>
                            <td><code>.flag-country-bn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bo"></span></td>
                            <td><code>bo</code></td>
                            <td><code>.flag-country-bo</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bq"></span></td>
                            <td><code>bq</code></td>
                            <td><code>.flag-country-bq</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-br"></span></td>
                            <td><code>br</code></td>
                            <td><code>.flag-country-br</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bs"></span></td>
                            <td><code>bs</code></td>
                            <td><code>.flag-country-bs</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bt"></span></td>
                            <td><code>bt</code></td>
                            <td><code>.flag-country-bt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bv"></span></td>
                            <td><code>bv</code></td>
                            <td><code>.flag-country-bv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bw"></span></td>
                            <td><code>bw</code></td>
                            <td><code>.flag-country-bw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-by"></span></td>
                            <td><code>by</code></td>
                            <td><code>.flag-country-by</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-bz"></span></td>
                            <td><code>bz</code></td>
                            <td><code>.flag-country-bz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ca"></span></td>
                            <td><code>ca</code></td>
                            <td><code>.flag-country-ca</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cc"></span></td>
                            <td><code>cc</code></td>
                            <td><code>.flag-country-cc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cd"></span></td>
                            <td><code>cd</code></td>
                            <td><code>.flag-country-cd</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cf"></span></td>
                            <td><code>cf</code></td>
                            <td><code>.flag-country-cf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cg"></span></td>
                            <td><code>cg</code></td>
                            <td><code>.flag-country-cg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ch"></span></td>
                            <td><code>ch</code></td>
                            <td><code>.flag-country-ch</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ci"></span></td>
                            <td><code>ci</code></td>
                            <td><code>.flag-country-ci</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ck"></span></td>
                            <td><code>ck</code></td>
                            <td><code>.flag-country-ck</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cl"></span></td>
                            <td><code>cl</code></td>
                            <td><code>.flag-country-cl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cm"></span></td>
                            <td><code>cm</code></td>
                            <td><code>.flag-country-cm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cn"></span></td>
                            <td><code>cn</code></td>
                            <td><code>.flag-country-cn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-co"></span></td>
                            <td><code>co</code></td>
                            <td><code>.flag-country-co</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cr"></span></td>
                            <td><code>cr</code></td>
                            <td><code>.flag-country-cr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cu"></span></td>
                            <td><code>cu</code></td>
                            <td><code>.flag-country-cu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cv"></span></td>
                            <td><code>cv</code></td>
                            <td><code>.flag-country-cv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cw"></span></td>
                            <td><code>cw</code></td>
                            <td><code>.flag-country-cw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cx"></span></td>
                            <td><code>cx</code></td>
                            <td><code>.flag-country-cx</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cy"></span></td>
                            <td><code>cy</code></td>
                            <td><code>.flag-country-cy</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-cz"></span></td>
                            <td><code>cz</code></td>
                            <td><code>.flag-country-cz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-de"></span></td>
                            <td><code>de</code></td>
                            <td><code>.flag-country-de</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-dj"></span></td>
                            <td><code>dj</code></td>
                            <td><code>.flag-country-dj</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-dk"></span></td>
                            <td><code>dk</code></td>
                            <td><code>.flag-country-dk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-dm"></span></td>
                            <td><code>dm</code></td>
                            <td><code>.flag-country-dm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-do"></span></td>
                            <td><code>do</code></td>
                            <td><code>.flag-country-do</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-dz"></span></td>
                            <td><code>dz</code></td>
                            <td><code>.flag-country-dz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ec"></span></td>
                            <td><code>ec</code></td>
                            <td><code>.flag-country-ec</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ee"></span></td>
                            <td><code>ee</code></td>
                            <td><code>.flag-country-ee</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-eg"></span></td>
                            <td><code>eg</code></td>
                            <td><code>.flag-country-eg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-eh"></span></td>
                            <td><code>eh</code></td>
                            <td><code>.flag-country-eh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-er"></span></td>
                            <td><code>er</code></td>
                            <td><code>.flag-country-er</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-es"></span></td>
                            <td><code>es</code></td>
                            <td><code>.flag-country-es</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-et"></span></td>
                            <td><code>et</code></td>
                            <td><code>.flag-country-et</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-eu"></span></td>
                            <td><code>eu</code></td>
                            <td><code>.flag-country-eu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fi"></span></td>
                            <td><code>fi</code></td>
                            <td><code>.flag-country-fi</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fj"></span></td>
                            <td><code>fj</code></td>
                            <td><code>.flag-country-fj</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fk"></span></td>
                            <td><code>fk</code></td>
                            <td><code>.flag-country-fk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fm"></span></td>
                            <td><code>fm</code></td>
                            <td><code>.flag-country-fm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fo"></span></td>
                            <td><code>fo</code></td>
                            <td><code>.flag-country-fo</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-fr"></span></td>
                            <td><code>fr</code></td>
                            <td><code>.flag-country-fr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ga"></span></td>
                            <td><code>ga</code></td>
                            <td><code>.flag-country-ga</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gb-eng"></span></td>
                            <td><code>gb-eng</code></td>
                            <td><code>.flag-country-gb-eng</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gb-nir"></span></td>
                            <td><code>gb-nir</code></td>
                            <td><code>.flag-country-gb-nir</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gb-sct"></span></td>
                            <td><code>gb-sct</code></td>
                            <td><code>.flag-country-gb-sct</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gb-wls"></span></td>
                            <td><code>gb-wls</code></td>
                            <td><code>.flag-country-gb-wls</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gb"></span></td>
                            <td><code>gb</code></td>
                            <td><code>.flag-country-gb</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gd"></span></td>
                            <td><code>gd</code></td>
                            <td><code>.flag-country-gd</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ge"></span></td>
                            <td><code>ge</code></td>
                            <td><code>.flag-country-ge</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gf"></span></td>
                            <td><code>gf</code></td>
                            <td><code>.flag-country-gf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gg"></span></td>
                            <td><code>gg</code></td>
                            <td><code>.flag-country-gg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gh"></span></td>
                            <td><code>gh</code></td>
                            <td><code>.flag-country-gh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gi"></span></td>
                            <td><code>gi</code></td>
                            <td><code>.flag-country-gi</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gl"></span></td>
                            <td><code>gl</code></td>
                            <td><code>.flag-country-gl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gm"></span></td>
                            <td><code>gm</code></td>
                            <td><code>.flag-country-gm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gn"></span></td>
                            <td><code>gn</code></td>
                            <td><code>.flag-country-gn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gp"></span></td>
                            <td><code>gp</code></td>
                            <td><code>.flag-country-gp</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gq"></span></td>
                            <td><code>gq</code></td>
                            <td><code>.flag-country-gq</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gr"></span></td>
                            <td><code>gr</code></td>
                            <td><code>.flag-country-gr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gs"></span></td>
                            <td><code>gs</code></td>
                            <td><code>.flag-country-gs</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gt"></span></td>
                            <td><code>gt</code></td>
                            <td><code>.flag-country-gt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gu"></span></td>
                            <td><code>gu</code></td>
                            <td><code>.flag-country-gu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gw"></span></td>
                            <td><code>gw</code></td>
                            <td><code>.flag-country-gw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-gy"></span></td>
                            <td><code>gy</code></td>
                            <td><code>.flag-country-gy</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-hk"></span></td>
                            <td><code>hk</code></td>
                            <td><code>.flag-country-hk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-hm"></span></td>
                            <td><code>hm</code></td>
                            <td><code>.flag-country-hm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-hn"></span></td>
                            <td><code>hn</code></td>
                            <td><code>.flag-country-hn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-hr"></span></td>
                            <td><code>hr</code></td>
                            <td><code>.flag-country-hr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ht"></span></td>
                            <td><code>ht</code></td>
                            <td><code>.flag-country-ht</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-hu"></span></td>
                            <td><code>hu</code></td>
                            <td><code>.flag-country-hu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-id"></span></td>
                            <td><code>id</code></td>
                            <td><code>.flag-country-id</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ie"></span></td>
                            <td><code>ie</code></td>
                            <td><code>.flag-country-ie</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-il"></span></td>
                            <td><code>il</code></td>
                            <td><code>.flag-country-il</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-im"></span></td>
                            <td><code>im</code></td>
                            <td><code>.flag-country-im</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-in"></span></td>
                            <td><code>in</code></td>
                            <td><code>.flag-country-in</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-io"></span></td>
                            <td><code>io</code></td>
                            <td><code>.flag-country-io</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-iq"></span></td>
                            <td><code>iq</code></td>
                            <td><code>.flag-country-iq</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ir"></span></td>
                            <td><code>ir</code></td>
                            <td><code>.flag-country-ir</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-is"></span></td>
                            <td><code>is</code></td>
                            <td><code>.flag-country-is</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-it"></span></td>
                            <td><code>it</code></td>
                            <td><code>.flag-country-it</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-je"></span></td>
                            <td><code>je</code></td>
                            <td><code>.flag-country-je</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-jm"></span></td>
                            <td><code>jm</code></td>
                            <td><code>.flag-country-jm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-jo"></span></td>
                            <td><code>jo</code></td>
                            <td><code>.flag-country-jo</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-jp"></span></td>
                            <td><code>jp</code></td>
                            <td><code>.flag-country-jp</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ke"></span></td>
                            <td><code>ke</code></td>
                            <td><code>.flag-country-ke</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kg"></span></td>
                            <td><code>kg</code></td>
                            <td><code>.flag-country-kg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kh"></span></td>
                            <td><code>kh</code></td>
                            <td><code>.flag-country-kh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ki"></span></td>
                            <td><code>ki</code></td>
                            <td><code>.flag-country-ki</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-km"></span></td>
                            <td><code>km</code></td>
                            <td><code>.flag-country-km</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kn"></span></td>
                            <td><code>kn</code></td>
                            <td><code>.flag-country-kn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kp"></span></td>
                            <td><code>kp</code></td>
                            <td><code>.flag-country-kp</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kr"></span></td>
                            <td><code>kr</code></td>
                            <td><code>.flag-country-kr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kw"></span></td>
                            <td><code>kw</code></td>
                            <td><code>.flag-country-kw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ky"></span></td>
                            <td><code>ky</code></td>
                            <td><code>.flag-country-ky</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-kz"></span></td>
                            <td><code>kz</code></td>
                            <td><code>.flag-country-kz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-la"></span></td>
                            <td><code>la</code></td>
                            <td><code>.flag-country-la</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lb"></span></td>
                            <td><code>lb</code></td>
                            <td><code>.flag-country-lb</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lc"></span></td>
                            <td><code>lc</code></td>
                            <td><code>.flag-country-lc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-li"></span></td>
                            <td><code>li</code></td>
                            <td><code>.flag-country-li</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lk"></span></td>
                            <td><code>lk</code></td>
                            <td><code>.flag-country-lk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lr"></span></td>
                            <td><code>lr</code></td>
                            <td><code>.flag-country-lr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ls"></span></td>
                            <td><code>ls</code></td>
                            <td><code>.flag-country-ls</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lt"></span></td>
                            <td><code>lt</code></td>
                            <td><code>.flag-country-lt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lu"></span></td>
                            <td><code>lu</code></td>
                            <td><code>.flag-country-lu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-lv"></span></td>
                            <td><code>lv</code></td>
                            <td><code>.flag-country-lv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ly"></span></td>
                            <td><code>ly</code></td>
                            <td><code>.flag-country-ly</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ma"></span></td>
                            <td><code>ma</code></td>
                            <td><code>.flag-country-ma</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mc"></span></td>
                            <td><code>mc</code></td>
                            <td><code>.flag-country-mc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-md"></span></td>
                            <td><code>md</code></td>
                            <td><code>.flag-country-md</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-me"></span></td>
                            <td><code>me</code></td>
                            <td><code>.flag-country-me</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mf"></span></td>
                            <td><code>mf</code></td>
                            <td><code>.flag-country-mf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mg"></span></td>
                            <td><code>mg</code></td>
                            <td><code>.flag-country-mg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mh"></span></td>
                            <td><code>mh</code></td>
                            <td><code>.flag-country-mh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mk"></span></td>
                            <td><code>mk</code></td>
                            <td><code>.flag-country-mk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ml"></span></td>
                            <td><code>ml</code></td>
                            <td><code>.flag-country-ml</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mm"></span></td>
                            <td><code>mm</code></td>
                            <td><code>.flag-country-mm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mn"></span></td>
                            <td><code>mn</code></td>
                            <td><code>.flag-country-mn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mo"></span></td>
                            <td><code>mo</code></td>
                            <td><code>.flag-country-mo</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mp"></span></td>
                            <td><code>mp</code></td>
                            <td><code>.flag-country-mp</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mq"></span></td>
                            <td><code>mq</code></td>
                            <td><code>.flag-country-mq</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mr"></span></td>
                            <td><code>mr</code></td>
                            <td><code>.flag-country-mr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ms"></span></td>
                            <td><code>ms</code></td>
                            <td><code>.flag-country-ms</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mt"></span></td>
                            <td><code>mt</code></td>
                            <td><code>.flag-country-mt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mu"></span></td>
                            <td><code>mu</code></td>
                            <td><code>.flag-country-mu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mv"></span></td>
                            <td><code>mv</code></td>
                            <td><code>.flag-country-mv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mw"></span></td>
                            <td><code>mw</code></td>
                            <td><code>.flag-country-mw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mx"></span></td>
                            <td><code>mx</code></td>
                            <td><code>.flag-country-mx</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-my"></span></td>
                            <td><code>my</code></td>
                            <td><code>.flag-country-my</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-mz"></span></td>
                            <td><code>mz</code></td>
                            <td><code>.flag-country-mz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-na"></span></td>
                            <td><code>na</code></td>
                            <td><code>.flag-country-na</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nc"></span></td>
                            <td><code>nc</code></td>
                            <td><code>.flag-country-nc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ne"></span></td>
                            <td><code>ne</code></td>
                            <td><code>.flag-country-ne</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nf"></span></td>
                            <td><code>nf</code></td>
                            <td><code>.flag-country-nf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ng"></span></td>
                            <td><code>ng</code></td>
                            <td><code>.flag-country-ng</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ni"></span></td>
                            <td><code>ni</code></td>
                            <td><code>.flag-country-ni</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nl"></span></td>
                            <td><code>nl</code></td>
                            <td><code>.flag-country-nl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-no"></span></td>
                            <td><code>no</code></td>
                            <td><code>.flag-country-no</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-np"></span></td>
                            <td><code>np</code></td>
                            <td><code>.flag-country-np</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nr"></span></td>
                            <td><code>nr</code></td>
                            <td><code>.flag-country-nr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nu"></span></td>
                            <td><code>nu</code></td>
                            <td><code>.flag-country-nu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-nz"></span></td>
                            <td><code>nz</code></td>
                            <td><code>.flag-country-nz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-om"></span></td>
                            <td><code>om</code></td>
                            <td><code>.flag-country-om</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pa"></span></td>
                            <td><code>pa</code></td>
                            <td><code>.flag-country-pa</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pe"></span></td>
                            <td><code>pe</code></td>
                            <td><code>.flag-country-pe</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pf"></span></td>
                            <td><code>pf</code></td>
                            <td><code>.flag-country-pf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pg"></span></td>
                            <td><code>pg</code></td>
                            <td><code>.flag-country-pg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ph"></span></td>
                            <td><code>ph</code></td>
                            <td><code>.flag-country-ph</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pk"></span></td>
                            <td><code>pk</code></td>
                            <td><code>.flag-country-pk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pl"></span></td>
                            <td><code>pl</code></td>
                            <td><code>.flag-country-pl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pm"></span></td>
                            <td><code>pm</code></td>
                            <td><code>.flag-country-pm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pn"></span></td>
                            <td><code>pn</code></td>
                            <td><code>.flag-country-pn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pr"></span></td>
                            <td><code>pr</code></td>
                            <td><code>.flag-country-pr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ps"></span></td>
                            <td><code>ps</code></td>
                            <td><code>.flag-country-ps</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pt"></span></td>
                            <td><code>pt</code></td>
                            <td><code>.flag-country-pt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-pw"></span></td>
                            <td><code>pw</code></td>
                            <td><code>.flag-country-pw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-py"></span></td>
                            <td><code>py</code></td>
                            <td><code>.flag-country-py</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-qa"></span></td>
                            <td><code>qa</code></td>
                            <td><code>.flag-country-qa</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-re"></span></td>
                            <td><code>re</code></td>
                            <td><code>.flag-country-re</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ro"></span></td>
                            <td><code>ro</code></td>
                            <td><code>.flag-country-ro</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-rs"></span></td>
                            <td><code>rs</code></td>
                            <td><code>.flag-country-rs</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ru"></span></td>
                            <td><code>ru</code></td>
                            <td><code>.flag-country-ru</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-rw"></span></td>
                            <td><code>rw</code></td>
                            <td><code>.flag-country-rw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sa"></span></td>
                            <td><code>sa</code></td>
                            <td><code>.flag-country-sa</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sb"></span></td>
                            <td><code>sb</code></td>
                            <td><code>.flag-country-sb</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sc"></span></td>
                            <td><code>sc</code></td>
                            <td><code>.flag-country-sc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sd"></span></td>
                            <td><code>sd</code></td>
                            <td><code>.flag-country-sd</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-se"></span></td>
                            <td><code>se</code></td>
                            <td><code>.flag-country-se</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sg"></span></td>
                            <td><code>sg</code></td>
                            <td><code>.flag-country-sg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sh"></span></td>
                            <td><code>sh</code></td>
                            <td><code>.flag-country-sh</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-si"></span></td>
                            <td><code>si</code></td>
                            <td><code>.flag-country-si</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sj"></span></td>
                            <td><code>sj</code></td>
                            <td><code>.flag-country-sj</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sk"></span></td>
                            <td><code>sk</code></td>
                            <td><code>.flag-country-sk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sl"></span></td>
                            <td><code>sl</code></td>
                            <td><code>.flag-country-sl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sm"></span></td>
                            <td><code>sm</code></td>
                            <td><code>.flag-country-sm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sn"></span></td>
                            <td><code>sn</code></td>
                            <td><code>.flag-country-sn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-so"></span></td>
                            <td><code>so</code></td>
                            <td><code>.flag-country-so</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sr"></span></td>
                            <td><code>sr</code></td>
                            <td><code>.flag-country-sr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ss"></span></td>
                            <td><code>ss</code></td>
                            <td><code>.flag-country-ss</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-st"></span></td>
                            <td><code>st</code></td>
                            <td><code>.flag-country-st</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sv"></span></td>
                            <td><code>sv</code></td>
                            <td><code>.flag-country-sv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sx"></span></td>
                            <td><code>sx</code></td>
                            <td><code>.flag-country-sx</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sy"></span></td>
                            <td><code>sy</code></td>
                            <td><code>.flag-country-sy</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-sz"></span></td>
                            <td><code>sz</code></td>
                            <td><code>.flag-country-sz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tc"></span></td>
                            <td><code>tc</code></td>
                            <td><code>.flag-country-tc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-td"></span></td>
                            <td><code>td</code></td>
                            <td><code>.flag-country-td</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tf"></span></td>
                            <td><code>tf</code></td>
                            <td><code>.flag-country-tf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tg"></span></td>
                            <td><code>tg</code></td>
                            <td><code>.flag-country-tg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-th"></span></td>
                            <td><code>th</code></td>
                            <td><code>.flag-country-th</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tj"></span></td>
                            <td><code>tj</code></td>
                            <td><code>.flag-country-tj</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tk"></span></td>
                            <td><code>tk</code></td>
                            <td><code>.flag-country-tk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tl"></span></td>
                            <td><code>tl</code></td>
                            <td><code>.flag-country-tl</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tm"></span></td>
                            <td><code>tm</code></td>
                            <td><code>.flag-country-tm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tn"></span></td>
                            <td><code>tn</code></td>
                            <td><code>.flag-country-tn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-to"></span></td>
                            <td><code>to</code></td>
                            <td><code>.flag-country-to</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tr"></span></td>
                            <td><code>tr</code></td>
                            <td><code>.flag-country-tr</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tt"></span></td>
                            <td><code>tt</code></td>
                            <td><code>.flag-country-tt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tv"></span></td>
                            <td><code>tv</code></td>
                            <td><code>.flag-country-tv</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tw"></span></td>
                            <td><code>tw</code></td>
                            <td><code>.flag-country-tw</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-tz"></span></td>
                            <td><code>tz</code></td>
                            <td><code>.flag-country-tz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ua"></span></td>
                            <td><code>ua</code></td>
                            <td><code>.flag-country-ua</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ug"></span></td>
                            <td><code>ug</code></td>
                            <td><code>.flag-country-ug</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-um"></span></td>
                            <td><code>um</code></td>
                            <td><code>.flag-country-um</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-us"></span></td>
                            <td><code>us</code></td>
                            <td><code>.flag-country-us</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-uy"></span></td>
                            <td><code>uy</code></td>
                            <td><code>.flag-country-uy</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-uz"></span></td>
                            <td><code>uz</code></td>
                            <td><code>.flag-country-uz</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-va"></span></td>
                            <td><code>va</code></td>
                            <td><code>.flag-country-va</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-vc"></span></td>
                            <td><code>vc</code></td>
                            <td><code>.flag-country-vc</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ve"></span></td>
                            <td><code>ve</code></td>
                            <td><code>.flag-country-ve</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-vg"></span></td>
                            <td><code>vg</code></td>
                            <td><code>.flag-country-vg</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-vi"></span></td>
                            <td><code>vi</code></td>
                            <td><code>.flag-country-vi</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-vn"></span></td>
                            <td><code>vn</code></td>
                            <td><code>.flag-country-vn</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-vu"></span></td>
                            <td><code>vu</code></td>
                            <td><code>.flag-country-vu</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-wf"></span></td>
                            <td><code>wf</code></td>
                            <td><code>.flag-country-wf</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ws"></span></td>
                            <td><code>ws</code></td>
                            <td><code>.flag-country-ws</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-xk"></span></td>
                            <td><code>xk</code></td>
                            <td><code>.flag-country-xk</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-ye"></span></td>
                            <td><code>ye</code></td>
                            <td><code>.flag-country-ye</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-yt"></span></td>
                            <td><code>yt</code></td>
                            <td><code>.flag-country-yt</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-za"></span></td>
                            <td><code>za</code></td>
                            <td><code>.flag-country-za</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-zm"></span></td>
                            <td><code>zm</code></td>
                            <td><code>.flag-country-zm</code></td>
                        </tr>
                        
                        <tr>
                            <td><span class="flag flag-country-zw"></span></td>
                            <td><code>zw</code></td>
                            <td><code>.flag-country-zw</code></td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>

            <footer>
    <div class="footer clearfix mb-0 text-muted">
        <div class="float-start">
            <p>2023 &copy; Mazer</p>
        </div>
        <div class="float-end">
            <p>Crafted with <span class="text-danger"><i class="bi bi-heart-fill icon-mid"></i></span>
                by <a href="https://saugi.me">Saugi</a></p>
        </div>
    </div>
</footer>
        </div>
    </div>
    <script src="${path }/resources/assets/static/js/components/dark.js"></script>
    <script src="${path }/resources/assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    
    
    <script src="${path }/resources/assets/compiled/js/app.js"></script>
    

    
</body>

</html>