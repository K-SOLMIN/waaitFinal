<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Application - Mazer Admin Dashboard</title>
    
    <link rel="shortcut icon" href="data:image/svg+xml,%3csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2033%2034'%20fill-rule='evenodd'%20stroke-linejoin='round'%20stroke-miterlimit='2'%20xmlns:v='https://vecta.io/nano'%3e%3cpath%20d='M3%2027.472c0%204.409%206.18%205.552%2013.5%205.552%207.281%200%2013.5-1.103%2013.5-5.513s-6.179-5.552-13.5-5.552c-7.281%200-13.5%201.103-13.5%205.513z'%20fill='%23435ebe'%20fill-rule='nonzero'/%3e%3ccircle%20cx='16.5'%20cy='8.8'%20r='8.8'%20fill='%2341bbdd'/%3e%3c/svg%3e" type="image/x-icon">
    <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACEAAAAiCAYAAADRcLDBAAAEs2lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS41LjAiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iCiAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIKICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIgogICAgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIKICAgZXhpZjpQaXhlbFhEaW1lbnNpb249IjMzIgogICBleGlmOlBpeGVsWURpbWVuc2lvbj0iMzQiCiAgIGV4aWY6Q29sb3JTcGFjZT0iMSIKICAgdGlmZjpJbWFnZVdpZHRoPSIzMyIKICAgdGlmZjpJbWFnZUxlbmd0aD0iMzQiCiAgIHRpZmY6UmVzb2x1dGlvblVuaXQ9IjIiCiAgIHRpZmY6WFJlc29sdXRpb249Ijk2LjAiCiAgIHRpZmY6WVJlc29sdXRpb249Ijk2LjAiCiAgIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiCiAgIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIKICAgeG1wOk1vZGlmeURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiCiAgIHhtcDpNZXRhZGF0YURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiPgogICA8eG1wTU06SGlzdG9yeT4KICAgIDxyZGY6U2VxPgogICAgIDxyZGY6bGkKICAgICAgc3RFdnQ6YWN0aW9uPSJwcm9kdWNlZCIKICAgICAgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWZmaW5pdHkgRGVzaWduZXIgMS4xMC4xIgogICAgICBzdEV2dDp3aGVuPSIyMDIyLTAzLTMxVDEwOjUwOjIzKzAyOjAwIi8+CiAgICA8L3JkZjpTZXE+CiAgIDwveG1wTU06SGlzdG9yeT4KICA8L3JkZjpEZXNjcmlwdGlvbj4KIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBhY2tldCBlbmQ9InIiPz5V57uAAAABgmlDQ1BzUkdCIElFQzYxOTY2LTIuMQAAKJF1kc8rRFEUxz9maORHo1hYKC9hISNGTWwsRn4VFmOUX5uZZ36oeTOv954kW2WrKLHxa8FfwFZZK0WkZClrYoOe87ypmWTO7dzzud97z+nec8ETzaiaWd4NWtYyIiNhZWZ2TvE946WZSjqoj6mmPjE1HKWkfdxR5sSbgFOr9Ll/rXoxYapQVik8oOqGJTwqPL5i6Q5vCzeo6dii8KlwpyEXFL519LjLLw6nXP5y2IhGBsFTJ6ykijhexGra0ITl5bRqmWU1fx/nJTWJ7PSUxBbxJkwijBBGYYwhBgnRQ7/MIQIE6ZIVJfK7f/MnyUmuKrPOKgZLpEhj0SnqslRPSEyKnpCRYdXp/9++msneoFu9JgwVT7b91ga+LfjetO3PQ9v+PgLvI1xkC/m5A+h7F32zoLXug38dzi4LWnwHzjeg8UGPGbFfySvuSSbh9QRqZ6H+Gqrm3Z7l9zm+h+iafNUV7O5Bu5z3L/wAdthn7QIme0YAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAJTSURBVFiF7Zi9axRBGIefEw2IdxFBRQsLWUTBaywSK4ubdSGVIY1Y6HZql8ZKCGIqwX/AYLmCgVQKfiDn7jZeEQMWfsSAHAiKqPiB5mIgELWYOW5vzc3O7niHhT/YZvY37/swM/vOzJbIqVq9uQ04CYwCI8AhYAlYAB4Dc7HnrOSJWcoJcBS4ARzQ2F4BZ2LPmTeNuykHwEWgkQGAet9QfiMZjUSt3hwD7psGTWgs9pwH1hC1enMYeA7sKwDxBqjGnvNdZzKZjqmCAKh+U1kmEwi3IEBbIsugnY5avTkEtIAtFhBrQCX2nLVehqyRqFoCAAwBh3WGLAhbgCRIYYinwLolwLqKUwwi9pxV4KUlxKKKUwxC6ZElRCPLYAJxGfhSEOCz6m8HEXvOB2CyIMSk6m8HoXQTmMkJcA2YNTHm3congOvATo3tE3A29pxbpnFzQSiQPcB55IFmFNgFfEQeahaAGZMpsIJIAZWAHcDX2HN+2cT6r39GxmvC9aPNwH5gO1BOPFuBVWAZue0vA9+A12EgjPadnhCuH1WAE8ivYAQ4ohKaagV4gvxi5oG7YSA2vApsCOH60WngKrA3R9IsvQUuhIGY00K4flQG7gHH/mLytB4C42EgfrQb0mV7us8AAMeBS8mGNMR4nwHamtBB7B4QRNdaS0M8GxDEog7iyoAguvJ0QYSBuAOcAt71Kfl7wA8DcTvZ2KtOlJEr+ByyQtqqhTyHTIeB+ONeqi3brh+VgIN0fohUgWGggizZFTplu12yW8iy/YLOGWMpDMTPXnl+Az9vj2HERYqPAAAAAElFTkSuQmCC" type="image/png">
    

  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/application-email.css">
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
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-collection-fill"></i>
                    <span>Extra Components</span>
                </a>
                
                <ul class="submenu ">
                    
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
                    
                    <li class="submenu-item  ">
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
                class="sidebar-item active ">
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
            
<div class="page-heading email-application overflow-hidden">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Email Application</h3>
                <p class="text-subtitle text-muted">A full inbox-ui for you to implement messaging.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Email Application</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section content-area-wrapper">
        <div class="sidebar-left">
            <div class="sidebar">
                <div class="sidebar-content email-app-sidebar d-flex">
                    <!-- sidebar close icon -->
                    <span class="sidebar-close-icon">
                        <i class="bi bi-x"></i>
                    </span>
                    <!-- sidebar close icon -->
                    <div class="email-app-menu">
                        <div class="form-group form-group-compose">
                            <!-- compose button  -->
                            <button type="button" class="btn btn-primary btn-block my-4 compose-btn">
                                <i class="bi bi-plus"></i>
                                Compose
                            </button>
                        </div>
                        <div class="sidebar-menu-list ps">
                            <!-- sidebar menu  -->
                            <div class="list-group list-group-messages">
                                <a href="#" class="list-group-item pt-0 active" id="inbox-menu">
                                    <div class="fonticon-wrap d-inline me-3">

                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use
                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                        </svg>
                                    </div>
                                    Inbox
                                    <span
                                        class="badge bg-light-primary badge-pill badge-round float-right mt-50">5</span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="fonticon-wrap d-inline me-3">

                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use
                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#archive" />
                                        </svg>
                                    </div>
                                    Sent
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="fonticon-wrap d-inline me-3">

                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use
                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#pencil" />
                                        </svg>
                                    </div> Draft
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="fonticon-wrap d-inline me-3">

                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                        </svg>
                                    </div>
                                    Starred
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="fonticon-wrap d-inline me-3">

                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use
                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#info-circle" />
                                        </svg>
                                    </div>
                                    Spam
                                    <span
                                        class="badge bg-light-danger badge-pill badge-round float-right mt-50">3</span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <div class="fonticon-wrap d-inline me-3">
                                        <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                            <use
                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#trash" />
                                        </svg>
                                    </div>
                                    Trash
                                </a>
                            </div>
                            <!-- sidebar menu  end-->

                            <!-- sidebar label start -->
                            <label class="sidebar-label">Labels</label>
                            <div class="list-group list-group-labels">
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center">
                                    Product
                                    <span class="bullet bullet-success bullet-sm"></span>
                                </a>
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center">
                                    Work
                                    <span class="bullet bullet-primary bullet-sm"></span>
                                </a>
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center">
                                    Misc
                                    <span class="bullet bullet-warning bullet-sm"></span>
                                </a>
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center">
                                    Family
                                    <span class="bullet bullet-danger bullet-sm"></span>
                                </a>
                                <a href="#" class="list-group-item d-flex justify-content-between align-items-center">
                                    Design
                                    <span class="bullet bullet-info bullet-sm"></span>
                                </a>
                            </div>
                            <!-- sidebar label end -->
                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                            </div>
                            <div class="ps__rail-y" style="top: 0px; right: 0px;">
                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- User new mail right area -->
                <div class="compose-new-mail-sidebar ps">
                    <div class="card shadow-none quill-wrapper p-0">
                        <div class="card-header">
                            <h3 class="card-title" id="emailCompose">New Message</h3>
                            <button type="button" class="close close-icon email-compose-new-close-btn">
                                <i class="bi bi-x"></i>
                            </button>
                        </div>
                        <!-- form start -->
                        <form action="#" id="compose-form">
                            <div class="card-content">
                                <div class="card-body pt-0">
                                    <div class="form-group pb-50">
                                        <label for="emailfrom">from</label>
                                        <input type="text" id="emailfrom" class="form-control"
                                            placeholder="user@example.com" disabled="">
                                    </div>
                                    <div class="form-label-group">
                                        <input type="email" id="emailTo" class="form-control" placeholder="To"
                                            required="">
                                        <label for="emailTo">To</label>
                                    </div>
                                    <div class="form-label-group">
                                        <input type="text" id="emailSubject" class="form-control" placeholder="Subject">
                                        <label for="emailSubject">Subject</label>
                                    </div>
                                    <div class="form-label-group">
                                        <input type="text" id="emailCC" class="form-control" placeholder="CC">
                                        <label for="emailCC">CC</label>
                                    </div>
                                    <div class="form-label-group">
                                        <input type="text" id="emailBCC" class="form-control" placeholder="BCC">
                                        <label for="emailBCC">BCC</label>
                                    </div>
                                    <!-- Compose mail Quill editor -->
                                    <div class="snow-container border rounded p-50">
                                        <div class="compose-editor mx-75 ql-container ql-snow">
                                            <div class="ql-editor ql-blank" data-gramm="false"
                                                data-placeholder="Type something....." contenteditable="true">
                                                <p><br></p>
                                            </div>
                                            <div class="ql-clipboard" tabindex="-1" contenteditable="true"></div>
                                            <div class="ql-tooltip ql-hidden"><a class="ql-preview" target="_blank"
                                                    href="about:blank"></a><input type="text" data-formula="e=mc^2"
                                                    data-link="https://quilljs.com" data-video="Embed URL"><a
                                                    class="ql-action"></a><a class="ql-remove"></a></div>
                                        </div>
                                        <div class="d-flex justify-content-end">
                                            <div class="compose-quill-toolbar pb-0 ql-toolbar ql-snow">
                                                <span class="ql-formats me-0">
                                                    <button class="ql-bold" type="button"><svg viewBox="0 0 18 18">
                                                            <path class="ql-stroke"
                                                                d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                            </path>
                                                            <path class="ql-stroke"
                                                                d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                            </path>
                                                        </svg></button>
                                                    <button class="ql-italic" type="button"><svg viewBox="0 0 18 18">
                                                            <line class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line>
                                                            <line class="ql-stroke" x1="5" x2="11" y1="14" y2="14">
                                                            </line>
                                                            <line class="ql-stroke" x1="8" x2="10" y1="14" y2="4">
                                                            </line>
                                                        </svg></button>
                                                    <button class="ql-underline" type="button"><svg viewBox="0 0 18 18">
                                                            <path class="ql-stroke"
                                                                d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                            </path>
                                                            <rect class="ql-fill" height="1" rx="0.5" ry="0.5"
                                                                width="12" x="3" y="15"></rect>
                                                        </svg></button>
                                                    <button class="ql-link" type="button"><svg viewBox="0 0 18 18">
                                                            <line class="ql-stroke" x1="7" x2="11" y1="7" y2="11">
                                                            </line>
                                                            <path class="ql-even ql-stroke"
                                                                d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                            </path>
                                                            <path class="ql-even ql-stroke"
                                                                d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                            </path>
                                                        </svg></button>
                                                    <button class="ql-image" type="button"><svg viewBox="0 0 18 18">
                                                            <rect class="ql-stroke" height="10" width="12" x="3" y="4">
                                                            </rect>
                                                            <circle class="ql-fill" cx="6" cy="7" r="1"></circle>
                                                            <polyline class="ql-even ql-fill"
                                                                points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                            </polyline>
                                                        </svg></button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-2">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="emailAttach">
                                            <label class="custom-file-label" for="emailAttach">Attach File</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-end pt-0">
                                <button type="reset" class="btn btn-light-secondary cancel-btn me-1">
                                    <i class="bi bi-x me-3"></i>
                                    <span class="d-sm-inline d-none">Cancel</span>
                                </button>
                                <button type="submit" class="btn-send btn btn-primary">
                                    <i class="bi bi-send me-3"></i> <span class="d-sm-inline d-none">Send</span>
                                </button>
                            </div>
                        </form>
                        <!-- form start end-->
                    </div>
                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                    </div>
                    <div class="ps__rail-y" style="top: 0px; right: 0px;">
                        <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                    </div>
                </div>
                <!--/ User Chat profile right area -->
            </div>
        </div>
        <div class="content-right">
            <div class="content-overlay"></div>
            <div class="content-wrapper">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <!-- email app overlay -->
                    <div class="app-content-overlay"></div>
                    <div class="email-app-area">
                        <!-- Email list Area -->
                        <div class="email-app-list-wrapper">
                            <div class="email-app-list">
                                <div class="email-action">
                                    <!-- action left start here -->
                                    <div class="action-left d-flex align-items-center">
                                        <!-- select All checkbox -->
                                        <div class="checkbox checkbox-shadow checkbox-sm selectAll me-3">
                                            <input type="checkbox" id="checkboxsmall" class='form-check-input'>
                                            <label for="checkboxsmall"></label>
                                        </div>
                                        <!-- delete unread dropdown -->
                                        <ul class="list-inline m-0 d-flex">
                                            <li class="list-inline-item mail-delete">
                                                <button type="button" class="btn btn-icon action-icon"
                                                    data-toggle="tooltip">
                                                    <span class="fonticon-wrap">
                                                        <svg class="bi" width="1.5em" height="1.5em"
                                                            fill="currentColor">
                                                            <use
                                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#trash" />
                                                        </svg>
                                                    </span>
                                                </button>
                                            </li>
                                            <li class="list-inline-item mail-unread">
                                                <button type="button" class="btn btn-icon action-icon">
                                                    <span class="fonticon-wrap d-inline">

                                                        <svg class="bi" width="1.5em" height="1.5em"
                                                            fill="currentColor">
                                                            <use
                                                                xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                                        </svg>
                                                    </span>
                                                </button>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="dropdown">
                                                    <button type="button"
                                                        class="dropdown-toggle btn btn-icon action-icon" id="folder"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="fonticon-wrap">

                                                            <svg class="bi" width="1.5em" height="1.5em"
                                                                fill="currentColor">
                                                                <use
                                                                    xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#folder" />
                                                            </svg>
                                                        </span>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right"
                                                        aria-labelledby="folder">
                                                        <a class="dropdown-item" href="#"><i class="bi bi-edit"></i>
                                                            Draft</a>
                                                        <a class="dropdown-item" href="#"><i
                                                                class="bi bi-info-circle"></i>Spam</a>
                                                        <a class="dropdown-item" href="#"><i
                                                                class="bi bi-trash"></i>Trash</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="dropdown">
                                                    <button type="button"
                                                        class="btn btn-icon dropdown-toggle action-icon" id="tag"
                                                        data-toggle="dropdown" aria-haspopup="true"
                                                        aria-expanded="false">
                                                        <span class="fonticon-wrap">

                                                            <svg class="bi" width="1.5em" height="1.5em"
                                                                fill="currentColor">
                                                                <use
                                                                    xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#tag" />
                                                            </svg>
                                                        </span>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right"
                                                        aria-labelledby="tag">
                                                        <a href="#" class="dropdown-item align-items-center">
                                                            <span class="bullet bullet-success bullet-sm"></span>
                                                            <span>Product</span>
                                                        </a>
                                                        <a href="#" class="dropdown-item align-items-center">
                                                            <span class="bullet bullet-primary bullet-sm"></span>
                                                            <span>Work</span>
                                                        </a>
                                                        <a href="#" class="dropdown-item align-items-center">
                                                            <span class="bullet bullet-warning bullet-sm"></span>
                                                            <span>Misc</span>
                                                        </a>
                                                        <a href="#" class="dropdown-item align-items-center">
                                                            <span class="bullet bullet-danger bullet-sm"></span>
                                                            <span>Family</span>
                                                        </a>
                                                        <a href="#" class="dropdown-item align-items-center">
                                                            <span class="bullet bullet-info bullet-sm"></span>
                                                            <span> Design</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- action left end here -->

                                    <!-- action right start here -->
                                    <div
                                        class="action-right d-flex flex-grow-1 align-items-center justify-content-around">
                                        <div class="sidebar-toggle d-block d-lg-none">
                                            <button class="btn btn-sm btn-outline-primary">
                                                <i class="bi bi-list fs-5" ></i>
                                            </button>
                                        </div>
                                        <!-- search bar  -->
                                        <div class="email-fixed-search flex-grow-1">

                                            <div class="form-group position-relative  mb-0 has-icon-left">
                                                <input type="text" class="form-control" placeholder="Search email..">
                                                <div class="form-control-icon">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#search" />
                                                    </svg>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- pagination and page count -->
                                        <span class="d-none d-sm-block">1-10 of 653</span>
                                        <button class="btn btn-icon email-pagination-prev action-button d-none d-sm-block">
                                            <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                <use
                                                    xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#chevron-left" />
                                            </svg>
                                        </button>
                                        <button class="btn btn-icon email-pagination-next action-button d-none d-sm-block">
                                            <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                <use
                                                    xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#chevron-right" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <!-- / action right -->

                                <!-- email user list start -->
                                <div class="email-user-list list-group ps ps--active-y">
                                    <ul class="users-list-wrapper media-list">
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall1"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall1"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite text-warning">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img src="${path }/resources/assets/compiled/jpg/1.jpg" alt="avtar img holder">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate">Open source
                                                            project public release 👍</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">4:14 AM</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text truncate mb-0">
                                                        Hey John, bah kivu decrete epanorthotic unnotched
                                                        Argyroneta nonius veratrine preimaginary
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-success bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall2"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall2"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/3.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate">Ecommerce
                                                            website Paypal integration 😃</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">2:15 AM</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        We will start the new application development soon once
                                                        this will be completed.
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-danger bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall3"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall3"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/7.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate">How To Set
                                                            Intentions That Energize You</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">2:15 AM</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        I will provide you more details after this Saturday. Hope
                                                        that will be fine for you..
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right d-flex align-items-center">
                                                            <i class="bi bi-paperclip me-3"></i>
                                                            <span class="bullet bullet-success bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall4"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall4"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/5.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate">Harness The
                                                            Power Of Words In Your Life</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">Yesterday</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text text-truncate mb-0">
                                                        When the equation, first to ability the forwards, the a but
                                                        travelling, outlines sentinels
                                                        bad expand to goodness....
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right d-flex align-items-center">
                                                            <i class="bi bi-paperclip me-3"></i>
                                                            <span class="bullet bullet-warning bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall5"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall5"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/3.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">Helen
                                                            Keller A Teller And A Seller</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">15 July</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Thanks for your feedback ! Here's a new layout for a new Modern
                                                        Admin theme.
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right d-flex align-items-center">
                                                            <i class="bi bi-paperclip me-3"></i>
                                                            <span class="bullet bullet-warning bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall6"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall6"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite text-warning">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/8.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">
                                                            Use Your Reset Button To Change Your Vibration 🎉
                                                        </span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">12-07-2019</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Hey John, bah kivu decrete epanorthotic unnotched
                                                        Argyroneta nonius veratrine preimaginary.</p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-info bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall7"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall7"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite text-warning">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/5.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">Harness
                                                            The Power Of Words In Your Life</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">03-29-2019</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Hope your like it, or feel free to comment, feedback or rebound
                                                        !
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-success bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall8"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall8"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/8.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">Hypnosis
                                                            12 Steps To Acquire Mind Power</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">19 Jun</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Monstrous with geared from far and these, morals, phase rome;
                                                        Class. Called get amidst of geared from
                                                        next...
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-danger bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall9"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall9"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/6.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">How To
                                                            Stop Living Your Life On Autopilot</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">2 Jun</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Thanks for your feedback ! Here's a new layout for a new
                                                        Modern Admin theme.
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-info bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall10"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall10"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/5.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">
                                                            Invest a few hours contributing to the software
                                                            you use and love. 🍕
                                                        </span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">29 May</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Hope your like it, or feel free to comment, feedback or rebound
                                                        !
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-info bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall11"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall11"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/1.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0">Harness
                                                            The Power Of Words In Your Life</span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">17 May</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Hope your like it, or feel free to comment, feedback or rebound
                                                        !.
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-warning bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="media mail-read">
                                            <div class="user-action">
                                                <div class="checkbox-con me-3">
                                                    <div class="checkbox checkbox-shadow checkbox-sm">
                                                        <input type="checkbox" id="checkboxsmall12"
                                                            class='form-check-input'>
                                                        <label for="checkboxsmall12"></label>
                                                    </div>
                                                </div>
                                                <span class="favorite">

                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
                                                </span>
                                            </div>
                                            <div class="pr-50">
                                                <div class="avatar">
                                                    <img class="rounded-circle" src="${path }/resources/assets/compiled/jpg/3.jpg"
                                                        alt="Generic placeholder image">
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="user-details">
                                                    <div class="mail-items">
                                                        <span class="list-group-item-text text-truncate mb-0"> Know
                                                            Yourself Your Inner Power </span>
                                                    </div>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="mail-date">21 Mar</span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="mail-message">
                                                    <p class="list-group-item-text mb-0 truncate">
                                                        Hope your like it, or feel free to comment, feedback or rebound
                                                        !
                                                    </p>
                                                    <div class="mail-meta-item">
                                                        <span class="float-right">
                                                            <span class="bullet bullet-warning bullet-sm"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- email user list end -->

                                    <!-- no result when nothing to show on list -->
                                    <div class="no-results">
                                        <i class="bi bi-error-circle font-large-2"></i>
                                        <h5>No Items Found</h5>
                                    </div>
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                        <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                                    </div>
                                    <div class="ps__rail-y" style="top: 0px; height: 733px; right: 0px;">
                                        <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 567px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ Email list Area -->

                        <!-- Detailed Email View -->
                        <div class="email-app-details">
                            <!-- email detail view header -->
                            <div class="email-detail-header">
                                <div class="email-header-left d-flex align-items-center mb-1">
                                    <span class="go-back me-3">
                                        <span class="fonticon-wrap d-inline">
                                            <i class="fas fa-chevron-left"></i>
                                        </span>
                                    </span>
                                    <h5 class="email-detail-title font-weight-normal mb-0">
                                        Advertising Internet Online
                                        <span class="badge bg-light-danger badge-pill ms-1">PRODUCT</span>
                                    </h5>
                                </div>
                                <div class="email-header-right mb-1 ms-2 pl-1">
                                    <ul class="list-inline m-0">
                                        <li class="list-inline-item">
                                            <button class="btn btn-icon action-icon">
                                                <span class="fonticon-wrap">
                                                    <i class="fas fa-trash"></i>
                                                </span>
                                            </button>
                                        </li>
                                        <li class="list-inline-item">
                                            <button class="btn btn-icon action-icon">
                                                <span class="fonticon-wrap">
                                                    <svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
                                                            xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                                    </svg>
                                                </span>
                                            </button>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="dropdown">
                                                <button class="btn btn-icon dropdown-toggle action-icon"
                                                    id="open-mail-menu" data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                    <span class="fonticon-wrap">
                                                        <i class="fas fa-folder"></i>
                                                    </span>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right"
                                                    aria-labelledby="open-mail-menu">
                                                    <a class="dropdown-item" href="#"><i class="bi bi-edit"></i>
                                                        Draft</a>
                                                    <a class="dropdown-item" href="#"><i class="bi bi-info-circle"></i>
                                                        Spam</a>
                                                    <a class="dropdown-item" href="#"><i class="bi bi-trash"></i>
                                                        Trash</a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <div class="dropdown">
                                                <button class="btn btn-icon dropdown-toggle action-icon"
                                                    id="open-mail-tag" data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                    <span class="fonticon-wrap">
                                                        <i class="fas fa-tag"></i>
                                                    </span>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right"
                                                    aria-labelledby="open-mail-tag">
                                                    <a href="#" class="dropdown-item align-items-center">
                                                        <span class="bullet bullet-success bullet-sm"></span>
                                                        Product
                                                    </a>
                                                    <a href="#" class="dropdown-item align-items-center">
                                                        <span class="bullet bullet-primary bullet-sm"></span>
                                                        Work
                                                    </a>
                                                    <a href="#" class="dropdown-item align-items-center">
                                                        <span class="bullet bullet-warning bullet-sm"></span>
                                                        Misc
                                                    </a>
                                                    <a href="#" class="dropdown-item align-items-center">
                                                        <span class="bullet bullet-danger bullet-sm"></span>
                                                        Family
                                                    </a>
                                                    <a href="#" class="dropdown-item align-items-center">
                                                        <span class="bullet bullet-info bullet-sm"></span>
                                                        Design
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-inline-item">
                                            <span class="no-of-list d-none d-sm-block ms-1">1-10 of 653</span>
                                        </li>
                                        <li class="list-inline-item">
                                            <button class="btn btn-icon email-pagination-prev action-icon">
                                                <i class="bi bi-chevron-left"></i>
                                            </button>
                                        </li>
                                        <li class="list-inline-item">
                                            <button class="btn btn-icon email-pagination-next action-icon">
                                                <i class="bi bi-chevron-right"></i>
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- email detail view header end-->
                            <div class="email-scroll-area ps ps--active-y">
                                <!-- email details  -->
                                <div class="row">
                                    <div class="col-12">
                                        <div class="collapsible email-detail-head">
                                            <div class="card collapse-header" role="tablist">
                                                <div id="headingCollapse5"
                                                    class="card-header d-flex justify-content-between align-items-center"
                                                    data-toggle="collapse" role="tab" data-target="#collapse5"
                                                    aria-expanded="false" aria-controls="collapse5">
                                                    <div class="collapse-title media">
                                                        <div class="pr-1">
                                                            <div class="avatar me-3">
                                                                <img src="${path }/resources/assets/compiled/jpg/8.jpg"
                                                                    alt="avtar img holder" width="30" height="30">
                                                            </div>
                                                        </div>
                                                        <div class="media-body mt-25">
                                                            <span class="text-primary">Elnora Reese</span>
                                                            <span class="d-sm-inline d-none">
                                                                &lt;elnora@gmail.com&gt;</span>
                                                            <small class="text-muted d-block">to Lois Jimenez</small>
                                                        </div>
                                                    </div>
                                                    <div class="information d-sm-flex d-none align-items-center">
                                                        <small class="text-muted me-3">15 Jul 2019, 10:30</small>
                                                        <span class="favorite">
                                                            <i class="bi bi-star me-3"></i>
                                                        </span>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle" id="fisrt-open-submenu"
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                                <i class="bi bi-dots-vertical-rounded me-0"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right"
                                                                aria-labelledby="fisrt-open-submenu">
                                                                <a href="#" class="dropdown-item mail-reply">
                                                                    <i class="bi bi-share"></i>
                                                                    Reply
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-redo"></i>
                                                                    Forward
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-info-circle"></i>
                                                                    Report Spam
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="collapse5" role="tabpanel" aria-labelledby="headingCollapse5"
                                                    class="collapse">
                                                    <div class="card-content">
                                                        <div class="card-body py-1">
                                                            <p class="text-bold-500">Greetings!</p>
                                                            <p>
                                                                Lorem Ipsum is simply dummy text of the printing and
                                                                typesetting industry. Lorem Ipsum has been
                                                                the industry's standard dummy text ever since the 1500s,
                                                                when an unknown printer took a galley of
                                                                type and scrambled it to make a type specimen book.
                                                            </p>
                                                            <p>
                                                                It has survived not only five centuries, but also the
                                                                leap into electronic typesetting, remaining
                                                                essentially unchanged.
                                                            </p>
                                                            <p class="mb-0">Sincerely yours,</p>
                                                            <p class="text-bold-500">Envato Design Team</p>
                                                        </div>
                                                        <div class="card-footer pt-0 border-top">
                                                            <label class="sidebar-label">Attached Files</label>
                                                            <ul class="list-unstyled mb-0">
                                                                <li class="cursor-pointer pb-25">
                                                                    <img src="../../../app-assets/static/images/icon/psd.png"
                                                                        alt="psd.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.psd</small>
                                                                </li>
                                                                <li class="cursor-pointer">
                                                                    <img src="../../../app-assets/static/images/icon/sketch.png"
                                                                        alt="sketch.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card collapse-header" role="tablist">
                                                <div id="headingCollapse6"
                                                    class="card-header d-flex justify-content-between align-items-center"
                                                    data-toggle="collapse" role="tab" data-target="#collapse6"
                                                    aria-expanded="false" aria-controls="collapse6">
                                                    <div class="collapse-title media">
                                                        <div class="pr-1">
                                                            <div class="avatar me-3">
                                                                <img src="${path }/resources/assets/static/images/faces/19.jpg"
                                                                    alt="avtar img holder" width="30" height="30">
                                                            </div>
                                                        </div>
                                                        <div class="media-body mt-25">
                                                            <span class="text-primary">Lois Jimenez </span>
                                                            <span class="d-sm-inline d-none">
                                                                &lt;lois_jim@gmail.com&gt;</span>
                                                            <small class="text-muted d-block">to Elnora Reese</small>
                                                        </div>
                                                    </div>
                                                    <div class="information d-sm-flex d-none align-items-center">
                                                        <i class="bi bi-paperclip me-3"></i>
                                                        <small class="text-muted me-3">10 Jul 2019, 10:30</small>
                                                        <span class="favorite">
                                                            <i class="bi bi-star me-3"></i>
                                                        </span>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle" id="second-open-submenu"
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                                <i class="bi bi-dots-vertical-rounded me-0"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right"
                                                                aria-labelledby="second-open-submenu">
                                                                <a href="#" class="dropdown-item mail-reply">
                                                                    <i class="bi bi-share"></i>
                                                                    Reply
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-redo"></i>
                                                                    Forward
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-info-circle"></i>
                                                                    Report Spam
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="collapse6" role="tabpanel" aria-labelledby="headingCollapse7"
                                                    class="collapse">
                                                    <div class="card-content">
                                                        <div class="card-body py-1">
                                                            <p class="text-bold-500">Greetings!</p>
                                                            <p>
                                                                Successful businesses have many things in common, today
                                                                we’ll look at the big ‘R’of recognition
                                                                and how a digital advertising network may help.
                                                                Recognition can be illustrated by two individuals
                                                                entering a crowded room at a party. Both walk to the far
                                                                side of the room, one of them slips
                                                                through the crowd easily and unnoticed as they reach the
                                                                far side.
                                                            </p>
                                                            <p>
                                                                Gummies sweet tart marzipan lemon drops donut pie.
                                                                Chocolate cake gingerbread jujubes gingerbread
                                                                chocolate cake tart bear claw apple pie jelly-o.
                                                                Gummies biscuit brownie marshmallow oat cake tootsie
                                                                roll bear claw topping. Oat cake sesame snaps
                                                                icing cupcake wafer tiramisu jelly-o sugar plum carrot
                                                                cake
                                                            </p>
                                                            <p class="mb-0">Sincerely yours,</p>
                                                            <p class="text-bold-500">Envato Design Team</p>
                                                        </div>
                                                        <div class="card-footer pt-0 border-top">
                                                            <label class="sidebar-label">Attached Files</label>
                                                            <ul class="list-unstyled mb-0">
                                                                <li class="cursor-pointer pb-25">
                                                                    <img src="../../../app-assets/static/images/icon/psd.png"
                                                                        alt="psd.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.psd</small>
                                                                </li>
                                                                <li class="cursor-pointer">
                                                                    <img src="../../../app-assets/static/images/icon/sketch.png"
                                                                        alt="sketch.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card collapse-header open" role="tablist">
                                                <div id="headingCollapse7"
                                                    class="card-header d-flex justify-content-between align-items-center"
                                                    data-toggle="collapse" role="tab" data-target="#collapse7"
                                                    aria-expanded="false" aria-controls="collapse7">
                                                    <div class="collapse-title media">
                                                        <div class="pr-1">
                                                            <div class="avatar me-3">
                                                                <img src="${path }/resources/assets/compiled/jpg/8.jpg"
                                                                    alt="avtar img holder" width="30" height="30">
                                                            </div>
                                                        </div>
                                                        <div class="media-body mt-25">
                                                            <span class="text-primary">Elnora Reese</span>
                                                            <span
                                                                class="d-sm-inline d-none">&lt;elnora@gmail.com&gt;</span>
                                                            <small class="text-muted d-block">to Lois Jimenez</small>
                                                        </div>
                                                    </div>
                                                    <div class="information d-sm-flex d-none align-items-center">
                                                        <small class="text-muted me-3">05 Jul 2019, 10:30</small>
                                                        <span class="favorite text-warning">
                                                            <svg class="bi" width="1.5em" height="1.5em"
                                                                fill="currentColor">
                                                                <use
                                                                    xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill" />
                                                            </svg>
                                                        </span>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle" id="third-open-menu"
                                                                data-toggle="dropdown" aria-haspopup="true"
                                                                aria-expanded="false">
                                                                <i class="bi bi-dots-vertical-rounded me-0"></i>
                                                            </a>
                                                            <div class="dropdown-menu dropdown-menu-right"
                                                                aria-labelledby="second-open-submenu">
                                                                <a href="#" class="dropdown-item mail-reply">
                                                                    <i class="bi bi-share"></i>
                                                                    Reply
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-redo"></i>
                                                                    Forward
                                                                </a>
                                                                <a href="#" class="dropdown-item">
                                                                    <i class="bi bi-info-circle"></i>
                                                                    Report Spam
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="collapse7" role="tabpanel" aria-labelledby="headingCollapse7"
                                                    class="collapse show">
                                                    <div class="card-content">
                                                        <div class="card-body py-1">
                                                            <p class="text-bold-500">Greetings!</p>
                                                            <p>
                                                                It is a long established fact that a reader will be
                                                                distracted by the readable content of a page
                                                                when looking at its layout.The point of using Lorem
                                                                Ipsum is that it has a more-or-less normal
                                                                distribution of letters, as opposed to using 'Content
                                                                here, content here',making it look like
                                                                readable English.
                                                            </p>
                                                            <p>
                                                                There are many variations of passages of Lorem Ipsum
                                                                available, but the majority have suffered
                                                                alteration in some form, by injected humour, or
                                                                randomised words which don't look even slightly
                                                                believable.
                                                            </p>
                                                            <p class="mb-0">Sincerely yours,</p>
                                                            <p class="text-bold-500">Envato Design Team</p>
                                                        </div>
                                                        <div class="card-footer pt-0 border-top">
                                                            <label class="sidebar-label">Attached Files</label>
                                                            <ul class="list-unstyled mb-0">
                                                                <li class="cursor-pointer pb-25">
                                                                    <img src="../../../app-assets/static/images/icon/psd.png"
                                                                        alt="psd.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.psd</small>
                                                                </li>
                                                                <li class="cursor-pointer">
                                                                    <img src="../../../app-assets/static/images/icon/sketch.png"
                                                                        alt="sketch.png" height="30">
                                                                    <small
                                                                        class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- email details  end-->
                                <div class="row px-2 mb-4">
                                    <!-- quill editor for reply message -->
                                    <div class="col-12 px-0">
                                        <div class="card shadow-none border rounded">
                                            <div class="card-body quill-wrapper">
                                                <span>Reply to Lois Jimenez</span>
                                                <div class="snow-container" id="detail-view-quill">
                                                    <div class="detail-view-editor ql-container ql-snow">
                                                        <div class="ql-editor ql-blank" data-gramm="false"
                                                            data-placeholder="Type something....."
                                                            contenteditable="true">
                                                            <p><br></p>
                                                        </div>
                                                        <div class="ql-clipboard" tabindex="-1" contenteditable="true">
                                                        </div>
                                                        <div class="ql-tooltip ql-hidden"><a class="ql-preview"
                                                                target="_blank" href="about:blank"></a><input
                                                                type="text" data-formula="e=mc^2"
                                                                data-link="https://quilljs.com"
                                                                data-video="Embed URL"><a class="ql-action"></a><a
                                                                class="ql-remove"></a></div>
                                                    </div>
                                                    <div class="d-flex justify-content-end">
                                                        <div class="detail-quill-toolbar ql-toolbar ql-snow">
                                                            <span class="ql-formats me-3">
                                                                <button class="ql-bold" type="button"><svg
                                                                        viewBox="0 0 18 18">
                                                                        <path class="ql-stroke"
                                                                            d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                                        </path>
                                                                        <path class="ql-stroke"
                                                                            d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                                        </path>
                                                                    </svg></button>
                                                                <button class="ql-italic" type="button"><svg
                                                                        viewBox="0 0 18 18">
                                                                        <line class="ql-stroke" x1="7" x2="13" y1="4"
                                                                            y2="4"></line>
                                                                        <line class="ql-stroke" x1="5" x2="11" y1="14"
                                                                            y2="14"></line>
                                                                        <line class="ql-stroke" x1="8" x2="10" y1="14"
                                                                            y2="4"></line>
                                                                    </svg></button>
                                                                <button class="ql-underline" type="button"><svg
                                                                        viewBox="0 0 18 18">
                                                                        <path class="ql-stroke"
                                                                            d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                                        </path>
                                                                        <rect class="ql-fill" height="1" rx="0.5"
                                                                            ry="0.5" width="12" x="3" y="15"></rect>
                                                                    </svg></button>
                                                                <button class="ql-link" type="button"><svg
                                                                        viewBox="0 0 18 18">
                                                                        <line class="ql-stroke" x1="7" x2="11" y1="7"
                                                                            y2="11"></line>
                                                                        <path class="ql-even ql-stroke"
                                                                            d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                                        </path>
                                                                        <path class="ql-even ql-stroke"
                                                                            d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                                        </path>
                                                                    </svg></button>
                                                                <button class="ql-image" type="button"><svg
                                                                        viewBox="0 0 18 18">
                                                                        <rect class="ql-stroke" height="10" width="12"
                                                                            x="3" y="4"></rect>
                                                                        <circle class="ql-fill" cx="6" cy="7" r="1">
                                                                        </circle>
                                                                        <polyline class="ql-even ql-fill"
                                                                            points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                                        </polyline>
                                                                    </svg></button>
                                                            </span>
                                                        </div>
                                                        <button class="btn btn-primary send-btn">
                                                            <i class="bi bi-send me-3"></i>
                                                            <span class="d-none d-sm-inline"> Send</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                                    <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                                </div>
                                <div class="ps__rail-y" style="top: 0px; height: 736px; right: 0px;">
                                    <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 626px;"></div>
                                </div>
                            </div>
                        </div>
                        <!--/ Detailed Email View -->
                    </div>
                </div>
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
    

    
<script>
    document.querySelector('.sidebar-toggle').addEventListener('click', () => {
        document.querySelector('.email-app-sidebar').classList.toggle('show')
    })
    document.querySelector('.sidebar-close-icon').addEventListener('click', () => {
        document.querySelector('.email-app-sidebar').classList.remove('show')
    })
    document.querySelector('.compose-btn').addEventListener('click', () => {
        document.querySelector('.compose-new-mail-sidebar').classList.add('show')
    })
    document.querySelector('.email-compose-new-close-btn').addEventListener('click', () => {
        document.querySelector('.compose-new-mail-sidebar').classList.remove('show')
    })
</script>

</body>

</html>