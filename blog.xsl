<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
				<body>
					<h1 style="text-align:center">Blog Details</h1>
					<table border="2" align="center">
						<tr bgcolor = "grey">
								<th>Blog ID</th>
		                  <th>Topic</th>
		                  <th>Content</th>
		                  <th>Category</th>	
		                  <th>Author</th>
		                  <th>Comments</th>
		                  <th>Stats</th>
		            </tr>

		                <xsl:for-each select="blog/feed">
		                	<xsl:sort select="BlogId" order="ascending"/>
		                	<xsl:if test="comments &lt; 6000">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="BlogId"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="topic"/>
		                        <td>
		                            <xsl:value-of select="content"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="category"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="author"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="comments"/>
		                        </td>
		                        <td>
		                        	<xsl:choose>
		                        		<xsl:when test="comments &gt; 100">
									     			Popular
									    		</xsl:when>
									    		<!--xsl:otherwise>Only few comments are there</xsl:otherwise-->
							        		</xsl:choose>
						        		</td>
					        		</tr>
		                   </xsl:if>
		                </xsl:for-each>
		            </table>

		            <table>
		            	<tr bgcolor = "grey">
								<th>Blog ID</th>
		            </tr>
		                <xsl:for-each select="user/f">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="tpc"/>
		                		</td>
								</tr>
							</xsl:for-each>
		            </table>

		        </body>
		    </html>
		    <xsl:template match = "blog/feed"> 
      <xsl:apply-templates select = "topic" /> 
      <br /> 
   </xsl:template>  

<xsl:template match = "topic"> 
      <span style = "font-size = 22px;"> 
         <xsl:value-of select = "." /> 
      </span> 
      <br/> 
   </xsl:template>  
		</xsl:template>
</xsl:stylesheet>