#version 330 core

in vec2 a_texCoord;
out vec4 f_color;

uniform sampler2D u_texture0;

void main(){
	vec4 tex_color = texture(u_texture0, a_texCoord);
	f_color = mix(tex_color, vec4(100,100,100,1.0), min(1.0, 0.0));
}