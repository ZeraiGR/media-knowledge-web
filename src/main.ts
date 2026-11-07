import './style.css';

const status = document.querySelector<HTMLParagraphElement>('#status')!;
fetch('/api/readyz', {signal: AbortSignal.timeout(5000)})
  .then(response => {
    status.textContent = response.ok ? 'Сервер доступен.' : 'Сервер пока не готов.';
  })
  .catch(() => {status.textContent = 'Нет соединения с сервером.';});
