이번 주 회고를 진행해라.

1. ~/projects/agent-orchestration/SCHEDULE.md 를 읽어라.
2. ~/projects/agent-orchestration/daily/ 폴더에서 이번 주(월~오늘) 날짜 파일들을 읽어라.
3. agent-orchestration 레포의 git log를 확인해라:
   ```
   git -C ~/projects/agent-orchestration log --oneline --since="7 days ago"
   ```

아래 형식으로 출력해라:

---

**주간 회고 — [날짜 범위]**

**이번 주 완료한 것**
- daily 로그 + git log 기반으로 정리

**여전히 진행 중**
- SCHEDULE.md [높], [중] 미완료 항목

**다음 주 추천 포커스 (Top 3)**
- 밀린 [높] 항목, 마감 임박 항목 우선

**한 줄 총평**
- 이번 주 어땠는지 솔직하게

---

출력이 끝나면, 위 내용을 그대로 아래 파일에 저장해라:
- 경로: ~/knowledge-vault/weekly-reviews/[YYYY-WNN].md (예: 2026-W11.md)
- 파일 상단에 다음 frontmatter를 추가해라:
  ```
  ---
  date: [오늘 날짜 YYYY-MM-DD]
  week: [WNN]
  tags: [weekly-review]
  ---
  ```
- 저장 완료 후 "✓ ~/knowledge-vault/weekly-reviews/[파일명] 저장 완료" 한 줄 출력
