<div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="{{route('admin.home')}}">
                @php
                $logo_type = 'site_logo';
                    if(!empty(get_static_option('site_admin_dark_mode'))){
                        $logo_type = 'site_white_logo';
                    }
                    $site_logo = get_attachment_image_by_id(get_static_option($logo_type),"full",false);
                @endphp
                @if (!empty($site_logo))
                    <img src="{{$site_logo['img_url']}}" alt="{{get_static_option('site_'.get_user_lang().'_title')}}">
                @endif
            </a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">
                    <li class="{{active_menu('admin-home')}}">
                        <a href="{{route('admin.home')}}"
                           aria-expanded="true">
                            <i class="ti-dashboard"></i>
                            <span>@lang('dashboard')</span>
                        </a>
                    </li>
                    @if(check_page_permission('admin_role_manage'))
                    <li
                            class="
                        {{active_menu('admin-home/new-user')}}
                            {{active_menu('admin-home/all-user')}}
                            {{active_menu('admin-home/all-user/role')}}
                                    "
                    >
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-user"></i>
                            <span>{{__('Admin Role Manage')}}</span></a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/all-user')}}"><a
                                        href="{{route('admin.all.user')}}">{{__('All Admin')}}</a></li>
                            <li class="{{active_menu('admin-home/new-user')}}"><a
                                        href="{{route('admin.new.user')}}">{{__('Add New Admin')}}</a></li>
                            <li class="{{active_menu('admin-home/all-user/role')}}"><a
                                        href="{{route('admin.all.user.role')}}">{{__('All Admin Role')}}</a></li>
                        </ul>
                    </li>
                    @endif
                    @if(check_page_permission('newsletter_manage'))
                    <li
                            class="
                            {{active_menu('admin-home/newsletter')}}
                            @if(request()->is('admin-home/newsletter/*')) active @endif
                                    "
                    >
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-email"></i>
                            <span>{{__('Newsletter Manage')}}</span></a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/newsletter')}}"><a
                                        href="{{route('admin.newsletter')}}">{{__('All Subscriber')}}</a></li>
                            <li class="{{active_menu('admin-home/newsletter/all')}}"><a
                                        href="{{route('admin.newsletter.mail')}}">{{__('Send Mail To All')}}</a></li>
                        </ul>
                    </li>
                    @endif
                  
                    {{-- order page change to form fill by student --}}
                    @if(check_page_permission('pages'))
                    
                        <li class="@if(request()->is('admin-home/online-apply/*')) active @endif ">
                            <a href="{{route('admin.online.apply')}}" aria-expanded="true"><i class="ti-light-bulb"></i>
                                <span>{{__('Online Apply')}}</span></a>
                        </li>
                    @endif
                   
                    @if(check_page_permission('pages'))
                        <li
                                class="
                        {{active_menu('admin-home/page')}}
                                {{active_menu('admin-home/new-page')}}
                                @if(request()->is('admin-home/page-edit/*')) active @endif
                                        "
                        >
                            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-write"></i>
                                <span>{{__('Pages')}}</span></a>
                            <ul class="collapse">
                                <li class="{{active_menu('admin-home/page')}}"><a
                                            href="{{route('admin.page')}}">{{__('All Pages')}}</a></li>
                                <li class="{{active_menu('admin-home/new-page')}}"><a
                                            href="{{route('admin.page.new')}}">{{__('Add New Page')}}</a></li>
                            </ul>
                        </li>
                    @endif
                    @if(check_page_permission('menus_manage'))
                        <li
                                class="
                        {{active_menu('admin-home/menu')}}
                                @if(request()->is('admin-home/menu-edit/*')) active @endif
                                        "
                        >
                            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-write"></i>
                                <span>{{__('Menus Manage')}}</span></a>
                            <ul class="collapse">
                                <li class="{{active_menu('admin-home/menu')}}"><a
                                            href="{{route('admin.menu')}}">{{__('All Menus')}}</a></li>
                            </ul>
                        </li>
                    @endif
                
                    @if(check_page_permission('blogs'))
                        <li
                                class="
                        {{active_menu('admin-home/blog')}}
                                {{active_menu('admin-home/blog-category')}}
                                {{active_menu('admin-home/new-blog')}}
                                {{active_menu('admin-home/all/news')}}
                                {{active_menu('admin-home/add/news')}}
                                @if(request()->is('admin-home/edit/news/*')) active @endif
                                @if(request()->is('admin-home/blog-edit/*')) active @endif
                                        "
                        >
                            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-write"></i>
                                <span>{{__('Blogs/News')}}</span></a>
                            <ul class="collapse">
                                <li class="{{active_menu('admin-home/blog')}}"><a
                                            href="{{route('admin.blog')}}">{{__('All Blog')}}</a></li>
                                <li class="{{active_menu('admin-home/all/news')}}"><a
                                            href="{{route('admin.news.list')}}">{{__('All News')}}</a></li>
                                <li class="{{active_menu('admin-home/blog-category')}}"><a
                                            href="{{route('admin.blog.category')}}">{{__('Category')}}</a></li>
                                <li class="{{active_menu('admin-home/new-blog')}}"><a
                                            href="{{route('admin.blog.new')}}">{{__('Add New Blog')}}</a></li>
                                <li class="{{active_menu('admin-home/new-news')}}"><a
                                            href="{{route('admin.news.new')}}">{{__('Add New News')}}</a></li>
                            </ul>
                        </li>
                    @endif
                    @if(check_page_permission('events_manage'))
                        <li class="
                        {{active_menu('admin-home/events')}}
                        @if(request()->is('admin-home/events/*')) active @endif
                        ">
                            <a href="javascript:void(0)" aria-expanded="true"><i class="ti-write"></i>
                                <span>{{__('Events Manage')}}</span></a>
                            <ul class="collapse">
                                <li class="{{active_menu('admin-home/events')}}"><a
                                            href="{{route('admin.events.all')}}">{{__('All Events')}}</a></li>
                                <li class="{{active_menu('admin-home/events/category')}}"><a
                                            href="{{route('admin.events.category.all')}}">{{__('Category')}}</a></li>
                                <li class="{{active_menu('admin-home/events/new')}}"><a
                                            href="{{route('admin.events.new')}}">{{__('Add New Event')}}</a></li>
                                <li class="{{active_menu('admin-home/events/page-settings')}}"><a
                                            href="{{route('admin.events.page.settings')}}">{{__('Event Page Settings')}}</a></li>
                            </ul>
                        </li>
                    @endif
                 
                    
                    @if(check_page_permission('pages'))
                        <li
                        class="
                        {{active_menu('admin-home/university')}}
                                @if(request()->is('admin-home/university/*')) active @endif
                                @if(request()->is('admin-home/course*')) active @endif
                                        "
                        >
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-write"></i>
                            <span>{{__('University Manage')}}</span></a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/university')}}"><a
                                        href="{{route('admin.university')}}">{{__('All Universities')}}</a></li>
                            <li class="{{active_menu('admin-home/university/create')}}"><a
                                        href="{{route('admin.university.create')}}">Add New University</a></li>
                            <li class="{{active_menu('admin-home/course')}}"><a
                                        href="{{route('admin.course')}}">{{__('All Courses')}}</a></li>
                        </ul>
                    </li>
                    @endif
                    @if(check_page_permission('services'))
                        <li class="{{active_menu('admin-home/discipline')}}">
                            <a href="{{route('admin.discipline')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                                <span>{{__('Discipline')}}</span></a>
                        </li>
                    @endif
                   @if(check_page_permission('services'))
                    <li class="{{active_menu('admin-home/level')}}">
                        <a href="{{route('admin.level')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                            <span>{{__('Level')}}</span></a>
                    </li>
                    @endif
                    
                    
                  
               
                    @if(check_page_permission('services'))
                    <li class="
                    @if(request()->is('admin-home/services/*')) active @endif
                    {{active_menu('admin-home/services')}}
                            ">
                        <a href="javascript:void(0)"
                           aria-expanded="true">
                            <i class="ti-layout"></i>
                            <span>{{__('Services')}}</span>
                        </a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/services')}}"><a
                                        href="{{route('admin.services')}}">{{__('New/All Services')}}</a></li>
                            <li class="{{active_menu('admin-home/services/category')}}"><a
                                        href="{{route('admin.service.category')}}">{{__('Category')}}</a></li>
                        </ul>
                    </li>
                    @endif

                    @if(check_page_permission('faq'))
                    <li class="{{active_menu('admin-home/faq')}}">
                        <a href="{{route('admin.faq')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                            <span>{{__('Faq')}}</span></a>
                    </li>
                    @endif
                    @if(check_page_permission('brand_logos'))
                    <li class="{{active_menu('admin-home/brands')}}">
                        <a href="{{route('admin.brands')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                            <span>{{__('Brand Logos')}}</span></a>
                    </li>
                    @endif
                  
                    @if(check_page_permission('team_members'))
                    <li class="{{active_menu('admin-home/team-member')}}">
                        <a href="{{route('admin.team.member')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                            <span>{{__('Team Members')}}</span></a>
                    </li>
                    @endif
                    @if(check_page_permission('testimonial'))
                    <li class="{{active_menu('admin-home/testimonial')}}">
                        <a href="{{route('admin.testimonial')}}" aria-expanded="true"><i class="ti-control-forward"></i>
                            <span>{{__('Testimonial')}}</span></a>
                    </li>
                    @endif
                    @if(check_page_permission('counterup'))
                    <li class="{{active_menu('admin-home/counterup')}}">
                        <a href="{{route('admin.counterup')}}" aria-expanded="true"><i class="ti-exchange-vertical"></i>
                            <span>{{__('Counterup')}}</span></a>
                    </li>
                    @endif

                    @if(!empty(get_static_option('site_maintenance_mode')))
                        <li class="{{active_menu('admin-home/maintains-page/settings')}}">
                            <a href="{{route('admin.maintains.page.settings')}}"
                               aria-expanded="true">
                                <i class="ti-dashboard"></i>
                                <span>{{__('Maintain Page Manage')}}</span>
                            </a>
                        </li>
                    @endif

                    @if(check_page_permission('top_bar_settings'))
                        <li class="{{active_menu('admin-home/topbar')}}">
                            <a href="{{route('admin.topbar')}}"
                            aria-expanded="true">
                                <i class="ti-dashboard"></i>
                                <span>{{__('Top Bar Settings')}}</span>
                            </a>
                        </li>
                    @endif

                    @if(check_page_permission('home_page_manage'))
                    <li class="@if(request()->is('admin-home/home-page-01/*')  ) active @endif
                        {{active_menu('admin-home/header')}}
                            ">
                        <a href="javascript:void(0)"
                        aria-expanded="true">
                            <i class="ti-home"></i>
                            <span>{{__('Home Page Manage')}}</span>
                        </a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/header')}}">
                                <a href="{{route('admin.header')}}">
                                    {{__('Header Slider')}}
                                </a>
                            </li>
                           
                            <li class="{{active_menu('admin-home/home-page-01/about-us')}}"><a
                                        href="{{route('admin.homeone.about.us')}}">{{__('About Us Area')}}</a></li>

                            <li class="{{active_menu('admin-home/home-page-01/testimonial')}}"><a
                                        href="{{route('admin.homeone.testimonial')}}">{{__('Testimonial Area')}}</a>
                            </li>
                           
                         
                            <li class="{{active_menu('admin-home/home-page-01/counterup')}}"><a
                                        href="{{route('admin.homeone.counterup')}}">{{__('Counterup Area')}}</a></li>
                            <li class="{{active_menu('admin-home/home-page-01/section-manage')}}"><a
                                        href="{{route('admin.homeone.section.manage')}}">{{__('Section Manage')}}</a>
                            </li>
                        </ul>
                    </li>
                @endif
                @if(check_page_permission('about_page_manage'))
                    <li class="@if(request()->is('admin-home/about-page/*')  ) active @endif ">
                        <a href="javascript:void(0)"
                        aria-expanded="true">
                            <i class="ti-home"></i>
                            <span>{{__('About Page Manage')}}</span>
                        </a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/about-page/about-us')}}"><a
                                        href="{{route('admin.about.page.about')}}">{{__('About Us Section')}}</a></li>
                            <li class="{{active_menu('admin-home/about-page/know-about')}}"><a
                                        href="{{route('admin.about.know')}}">{{__('Know Us Section')}}</a></li>
                            <li class="{{active_menu('admin-home/about-page/section-manage')}}"><a
                                        href="{{route('admin.about.page.section.manage')}}">{{__('Section Manage')}}</a>
                            </li>
                        </ul>
                    </li>
                @endif
                @if(check_page_permission('contact_page_manage'))
                    <li class="@if(request()->is('admin-home/contact-page/*')  ) active @endif">
                        <a href="javascript:void(0)"
                        aria-expanded="true">
                            <i class="ti-home"></i>
                            <span>{{__('Contact Page Manage')}}</span>
                        </a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/contact-page/contact-info')}}"><a
                                        href="{{route('admin.contact.info')}}">{{__('Contact Info')}}</a></li>
                            <li class="{{active_menu('admin-home/contact-page/form-area')}}"><a
                                        href="{{route('admin.contact.page.form.area')}}">{{__('Form Area')}}</a></li>
                            <li class="{{active_menu('admin-home/contact-page/map')}}"><a
                                        href="{{route('admin.contact.page.map')}}">{{__('Google Map Area')}}</a></li>
                        </ul>
                    </li>
                @endif

                    @if(check_page_permission('footer_area'))
                    <li class="@if(request()->is('admin-home/footer/*')) active @endif">
                        <a href="javascript:void(0)"
                           aria-expanded="true">
                            <i class="ti-layout"></i>
                            <span>{{__('Footer Area')}}</span>
                        </a>
                        <ul class="collapse">
                            <li class="{{active_menu('admin-home/footer/about')}}"><a
                                        href="{{route('admin.footer.about')}}">{{__('About Widget')}}</a></li>
                            <li class="{{active_menu('admin-home/footer/useful-links')}}"><a
                                        href="{{route('admin.footer.useful.link')}}">{{__('Useful Links Widget')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/footer/recent-post')}}"><a
                                        href="{{route('admin.footer.recent.post')}}">{{__('Recent Posts Widget')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/footer/important-links')}}"><a
                                        href="{{route('admin.footer.important.link')}}">{{__('Important Links Widget')}}</a>
                            </li>
                        </ul>
                    </li>
                    @endif


                    @if(check_page_permission('general_settings'))
                    <li class="@if(request()->is('admin-home/general-settings/*')) active @endif">
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-settings"></i>
                            <span>{{__('General Settings')}}</span></a>
                        <ul class="collapse ">
                            <li class="{{active_menu('admin-home/general-settings/site-identity')}}"><a
                                        href="{{route('admin.general.site.identity')}}">{{__('Site Identity')}}</a></li>
                            <li class="{{active_menu('admin-home/general-settings/basic-settings')}}"><a
                                        href="{{route('admin.general.basic.settings')}}">{{__('Basic Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/typography-settings')}}"><a
                                        href="{{route('admin.general.typography.settings')}}">{{__('Typography Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/seo-settings')}}"><a
                                        href="{{route('admin.general.seo.settings')}}">{{__('SEO Settings')}}</a></li>
                            <li class="{{active_menu('admin-home/general-settings/scripts')}}"><a
                                        href="{{route('admin.general.scripts.settings')}}">{{__('Third Party Scripts')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/email-template')}}"><a
                                        href="{{route('admin.general.email.template')}}">{{__('Email Template')}}</a>
                            </li>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/smtp-settings')}}"><a
                                        href="{{route('admin.general.smtp.settings')}}">{{__('SMTP Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/regenerate-image')}}"><a
                                        href="{{route('admin.general.regenerate.thumbnail')}}">{{__('Regenerate Media Image')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/page-settings')}}"><a
                                        href="{{route('admin.general.page.settings')}}">{{__('Page Settings')}}</a></li>
                            @if(!empty(get_static_option('site_payment_gateway')))
                            <li class="{{active_menu('admin-home/general-settings/payment-settings')}}"><a
                                        href="{{route('admin.general.payment.settings')}}">{{__('Payment Gateway Settings')}}</a></li>
                            @endif
                            <li class="{{active_menu('admin-home/general-settings/custom-css')}}"><a
                                        href="{{route('admin.general.custom.css')}}">{{__('Custom CSS')}}</a></li>
                            <li class="{{active_menu('admin-home/general-settings/custom-js')}}"><a
                                        href="{{route('admin.general.custom.js')}}">{{__('Custom JS')}}</a></li>

                            <li class="{{active_menu('admin-home/general-settings/cache-settings')}}"><a
                                        href="{{route('admin.general.cache.settings')}}">{{__('Cache Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/gdpr-settings')}}"><a
                                        href="{{route('admin.general.gdpr.settings')}}">{{__('GDPR Compliant Cookies Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/backup-settings')}}"><a
                                        href="{{route('admin.general.backup.settings')}}">{{__('Backup Settings')}}</a>
                            </li>
                            <li class="{{active_menu('admin-home/general-settings/license-setting')}}"><a
                                        href="{{route('admin.general.license.settings')}}">{{__('Licence Settings')}}</a>
                            </li>
                        </ul>
                    </li>
                    @endif
                   
                </ul>
            </nav>
        </div>
    </div>
</div>
