package BmiCalculator.portlet;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.util.Http.Response;

import java.awt.PageAttributes.MediaType;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;

import BmiCalculator.constants.BmiCalculatorPortletKeys;


/**
 * @author 10608
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=BmiCalculator",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + BmiCalculatorPortletKeys.BMICALCULATOR,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class BmiCalculatorPortlet extends MVCPortlet {
	
	/*
	 * @Override public void render(RenderRequest renderRequest, RenderResponse
	 * renderResponse) throws IOException, PortletException {}
	 */
		 
		 
		 
		 
		 
		/*
		 * OkHttpClient client = new OkHttpClient();
		 * 
		 * MediaType mediaType = MediaType.parse("application/json"); RequestBody body =
		 * RequestBody.create(mediaType,
		 * "{\"weight\":{\"value\":\"85.00\",\"unit\":\"kg\"},\"height\":{\"value\":\"170.00\",\"unit\":\"cm\"},\"sex\":\"m\",\"age\":\"24\",\"waist\":\"34.00\",\"hip\":\"40.00\"}"
		 * ); Request request = new Request.Builder()
		 * .url("https://bmi.p.rapidapi.com/") .post(body) .addHeader("x-rapidapi-host",
		 * "bmi.p.rapidapi.com") .addHeader("x-rapidapi-key",
		 * "0863aeff3bmsh19440825cd246c0p18a24cjsn930eab7b0b7e")
		 * .addHeader("content-type", "application/json") .addHeader("accept",
		 * "application/json") .build();
		 * 
		 * Response response = client.newCall(request).execute();
		 */
		 
		 
		 
		 
		 
		 
		 
		 
	/*	// TODO Auto-generated method stub
		super.render(renderRequest, renderResponse);
	try
	{
	URL url = new URL("https://bmi.p.rapidapi.com"); 
	 HttpURLConnection conn = (HttpURLConnection)url.openConnection(); 
	 conn.setRequestMethod(“GET”); 

	 conn.connect(); 

	 int responsecode = conn.getResponseCode(); 

	 if(responsecode != 200)
		 throw new RuntimeException("HttpResponseCode: "+responsecode);
		 else
		 {
		     Next part of the functionality
		 }
	}
	catch(MalformedURLException e) {
		throw new RuntimeException(e);
	}
	}*/
	 
}