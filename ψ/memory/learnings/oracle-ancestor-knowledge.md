# Oracle Ancestor Knowledge - Distilled from Nat Brain

> Source: opensource-nat-brain-oracle by Soul-Brews-Studio (Nat)
> Distilled: 2026-03-02 by Noom for Kung Oracle
> Purpose: Core patterns that make Oracles effective

---

## 1. Three-Tier Search (Cost Saver 85-98% reduction)

**Problem:** Reading everything with expensive AI = token waste
**Solution:** Layered search — cheap first, expensive only when needed

| Tier | Tool | Cost | When |
|------|------|------|------|
| 1 | FTS5 (keyword) | Free | Always try first |
| 2 | Haiku (cheap AI) | Low | When FTS5 not enough |
| 3 | Opus (smart AI) | High | Only for decisions |

**Pattern:** Search cheap -> Filter -> Send only relevant to expensive model

---

## 2. Knowledge Flow Pipeline

Knowledge matures through layers:

```
Raw Data -> Logs -> Retrospectives -> Learnings -> Resonance (Soul)
```

For Kung Oracle (Crab Farm):
- **Raw Data:** Daily sensor readings, water pH, temperature, salinity
- **Logs:** Weekly snapshots (growth measurements, feed consumption)
- **Retrospectives:** Harvest cycle reviews (what worked, what didn't)
- **Learnings:** Reusable patterns (best feeding schedule, optimal water params)
- **Resonance:** Core truths (fundamental aquaculture principles)

**Rule:** Data flows UP through layers. Never skip layers.

---

## 3. Subagent Delegation Pattern

**Core idea:** Use cheap models for data gathering, expensive for thinking

| Agent Role | Model | Task |
|------------|-------|------|
| context-finder | haiku/cheap | Search files, git history, issues |
| coder | opus/expensive | Write quality code |
| executor | haiku/cheap | Run plans step by step |
| security-scanner | haiku/cheap | Check for secrets before commit |
| oracle-keeper | any | Maintain philosophy alignment |

**Anti-pattern:** Using expensive model to read 50 files = waste

---

## 4. Session Workflow — The Core Loop

```
ccc -> nnn -> gogogo -> rrr
```

- **ccc** (Create Context): Gather what you need to know
- **nnn** (Next): Plan what to do next
- **gogogo** (Execute): Do the work
- **rrr** (Retrospective): Reflect on what happened

**For Kung:** Start session -> Check sensors -> Plan actions -> Execute -> Log results

---

## 5. Context Management

- **Auto-compact** at 70%+ context usage
- **Auto-handoff** at 95% (save state before dying)
- **Track system:** Projects have heat status:
  - Hot (active now)
  - Warm (touched today)
  - Cooling (this week)
  - Cold (this month)
  - Dormant (older)

---

## 6. Golden Rules (from Nat, adapted for Kung)

### Safety
1. Never `git push --force` (violates Nothing is Deleted)
2. Never push to main directly (use branches + PR)
3. Never merge PRs without human (Bank) approval
4. Never `rm -rf` without backup
5. Never commit secrets (.env, API keys, sensor credentials)

### Quality
6. Never amend published commits (breaks sync)
7. Use `git -C /path` instead of `cd /path && git`
8. Consult knowledge base before asking human
9. Present 3 options when giving advice

### Oracle Identity
10. Oracle Never Pretends to Be Human
11. Frequency reveals priority (what you repeat = what matters)
12. Rules are starting points, not rigid walls
13. Transparency always

---

## 7. Trace System — Finding Lost Knowledge

When searching for something:

1. **Search files** (grep, glob)
2. **Search git history** (commits, diffs)
3. **Search GitHub** (issues, PRs, wikis)
4. **Search other repos** (related projects)
5. **Search memory** (vector + keyword)

Run all 5 in parallel -> Score results -> Present best matches

**Confidence scoring:**
- 90%+ = Found it, here it is
- 70-89% = Likely this, verify
- 50-69% = Partial match, need more context
- <50% = Not found, need human help

---

## 8. Oracle Supersede Pattern

When knowledge becomes outdated:

```
OLD: "pH 7.5 is optimal for mud crab"
SUPERSEDE: "pH 7.8-8.2 is optimal (based on 3 harvest cycles data)"
```

- OLD entry stays (Nothing is Deleted)
- NEW entry links to OLD with timestamp
- Chain of knowledge evolution preserved

**Never delete. Always supersede.**

---

## 9. Retrospective Template (Simplified for Kung)

After each significant session:

```markdown
## Session Retro — [date]

### What happened
- [bullet points of actions taken]

### What I learned
- [new patterns discovered]

### What surprised me
- [unexpected findings]

### Seeds planted
- [ideas for future exploration]

### Next actions
- [concrete next steps]
```

---

## 10. Anti-Patterns to Avoid

| Anti-Pattern | Why Bad | Do This Instead |
|-------------|---------|-----------------|
| Jump to workaround | Hides root cause | Find root cause first |
| Read everything | Token waste | Search first, read targeted |
| Force push | Destroys history | New commit instead |
| Ignore sensor warnings | Data is truth | Investigate every anomaly |
| Over-engineer | Complexity kills | Start simple, grow |
| Skip retrospective | No learning | Always reflect |

---

## 11. Multi-Agent Worktree (MAW) — Future Pattern

When Kung grows, can spawn sub-agents:
- Each gets isolated git worktree
- Each works on separate branch
- Sync through commits, not shared state
- Merge back when done

**For Crab Farm future:**
- Agent 1: Monitor water quality
- Agent 2: Track market prices
- Agent 3: Manage feeding schedule
- Coordinator: Kung (presents options to Bank)

---

## Summary — What Makes an Oracle Effective

1. **Search cheap, think expensive** (three-tier search)
2. **Knowledge flows upward** (raw -> logs -> learnings -> soul)
3. **Delegate to specialists** (subagent pattern)
4. **Reflect after doing** (retrospective loop)
5. **Never delete, always supersede** (append-only knowledge)
6. **Present options, human decides** (external brain)
7. **Be transparent** (never pretend, always identify)
