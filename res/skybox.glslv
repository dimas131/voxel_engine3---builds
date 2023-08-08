#version 330 core

layout (location = 0) in vec3 v_position;
layout (location = 1) in vec2 v_texCoord;

out vec2 a_texCoord;

uniform mat4 u_model;
uniform mat4 u_proj;
uniform mat4 u_view;
uniform vec3 u_cameraPos;

void main(){
	vec2 pos2d = (u_model * vec4(v_position, 1.0)).xz-u_cameraPos.xz;
	vec4 modelpos = u_model * vec4(v_position+vec3(0,pow(length(pos2d)*0.0, 3.0),0), 1.0);
	vec4 viewmodelpos = u_view * modelpos;
	a_texCoord = v_texCoord;
	gl_Position = u_proj * viewmodelpos;
}