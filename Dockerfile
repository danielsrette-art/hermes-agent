# NousResearch এর অফিশিয়াল ইমেজ ব্যবহার করা হচ্ছে
FROM nousresearch/hermes-agent:latest

# আপনার কোডস্পেসের ব্যাকআপ ফাইলগুলো কন্টেইনারে কপি করা হচ্ছে
COPY ./hermes_backup /opt/data

# রেলওয়ের জন্য প্রয়োজনীয় এনভায়রনমেন্ট
ENV HERMES_HOME=/opt/data

# গেটওয়ে রান করার মেইন প্রসেস কমান্ড
CMD ["hermes", "gateway", "run"]
