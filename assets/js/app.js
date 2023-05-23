import Alpine from "alpinejs";
import dayjs from "dayjs";

import relativeTime from "dayjs/plugin/relativeTime";
dayjs.extend(relativeTime);

const formatRelativeTime = (ts) => dayjs(ts).fromNow();

window.formatRelativeTime = formatRelativeTime;
window.Alpine = Alpine;
Alpine.start();
