<%--
  ~ Copyright 2021-2022 the original author or authors
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>
<%@ attribute name="text" type="java.lang.String" required="true"  %>
<%@ attribute name="length" type="java.lang.Integer" required="false" %>
<%
 text = text.replaceAll("<", "&lt;");
 text = text.replaceAll(">", "&gt;");
 if (length == null)
    length = 23;
 if (text.length() <= length) {
     out.print(text);
 } else {
     out.println("<span class=\"tooltip\"> " + text.substring(0, length - 3) + "... <span>" + text + "</span></span>");
 }
%>