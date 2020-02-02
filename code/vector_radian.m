function output_radian = vector_radian(vector1,vector2)


d3vector1 = [vector1 0];
d3vector2 = [vector2 0];


tmp_cross = -cross(d3vector1,d3vector2) / norm(d3vector1) / norm(d3vector2);
sintheta = tmp_cross(3);
costheta = dot(d3vector1,d3vector2) / norm(d3vector1) / norm(d3vector2); 

if sintheta >= 0 && costheta >= 0
    output_radian = asin(sintheta);
    return;
end

if sintheta >= 0 && costheta >= 0
    output_radian = asin(sintheta);
    return;
end
if sintheta >= 0 && costheta <= 0
    output_radian = acos(costheta);
    return;
end
if sintheta <= 0 && costheta <= 0
    output_radian = 2*pi - acos(costheta);
    return;
end
if sintheta <= 0 && costheta >= 0
    output_radian = asin(sintheta) + 2*pi;
    return;
end
end