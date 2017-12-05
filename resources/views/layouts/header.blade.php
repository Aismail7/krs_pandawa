<nav class="navbar navbar-default" >
            <div class="container-fluid" style="background: linear-gradient(to right, #008080, orange);">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <h3 style="color:white;">Sistem Informasi Akademik Mahasiswa Insan Pembangunan</h3>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="ti-settings"></i>
								<p style="color:white;">Settings</p>
                                <b class="caret"></b>
                            </a>
                             <ul class="dropdown-menu">
                                <li>
                                <a href="{{route(Auth::user()->role.'.resetpass')}}">Ubah Password</a></li>
                                <li><a href="{{route('logout')}}">Log Out</a></li>
                              </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>