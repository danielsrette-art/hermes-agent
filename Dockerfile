# অফিশিয়াল ডকার ইমেজ
FROM nousresearch/hermes-agent:latest

# ডকার ইমেজের অফিশিয়াল ইন্টারনাল ডেটা পাথে কোডস্পেসের ব্যাকআপ কপি করা হচ্ছে
COPY ./hermes_backup /opt/data

# হার্মিসকে ডকার ডিরেক্টরি পাথ চিনিয়ে দেওয়া
ENV HERMES_HOME=/opt/data

# পোর্টাল লুপসহ গেটওয়ে রান করার কমান্ড
CMD ["hermes", "gateway", "run", "--portal"]
