package org.fao.fir.cgrfa.web;

import javax.ws.rs.ApplicationPath;

import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;

@ApplicationPath("/")
public class CGRFAApplication extends ResourceConfig {
	public CGRFAApplication() {
		register(new CorsFilter());
		register(new CGRFA());
		register(MultiPartFeature.class);
	}
}
