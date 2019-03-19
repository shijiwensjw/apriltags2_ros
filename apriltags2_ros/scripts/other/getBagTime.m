function t = getBagTime(bagfile)
    t = double(bagfile.header.stamp.sec)+ ...
        double(bagfile.header.stamp.nsec)/1e9;
end
