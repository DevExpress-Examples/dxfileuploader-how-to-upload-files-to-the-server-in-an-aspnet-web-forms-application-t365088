using System;
using System.Web;
using System.Web.SessionState;

namespace Upload {
    public class UploadHandler : IHttpHandler {
        public bool IsReusable {
            get { return true; }
        }

        public void ProcessRequest(HttpContext context) {
            SaveFilesHelper.Save(context);
        }
    }
}
