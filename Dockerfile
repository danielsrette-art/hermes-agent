FROM nousresearch/hermes-agent:latest

# আপনার কোডস্পেসের ব্যাকআপ (যার মধ্যে পোর্টাল লগইন সেশন আছে) কপি করা হচ্ছে
COPY ./hermes_backup /root/.hermes

# ডিরেক্টরি পাথ সেট করা হচ্ছে
ENV HERMES_HOME=/root/.hermes

# পোর্টাল এবং গেটওয়ে একসাথে ২৪/৭ রান করার কমান্ড
CMD ["hermes", "gateway", "run", "--portal"]
