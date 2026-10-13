# Week 7: Web server on cPouta with OpenTofu

Repository: https://github.com/verttistenberg/week7-iac-cpouta

## 1. Overview of the code

### Files
| File | Purpose |
|---|---|
| versions.tf | [...] |
| main.tf | [...] |
| variables.tf | [...] |
| cloud-init.yaml | [...] |
| outputs.tf | [...] |
| terraform.tfvars.example | [...] |
| .gitignore | [...] |
| .terraform.lock.hcl | [...] |

### Resources in main.tf and how they refer to each other
[One short paragraph or a list: data block, key pair, security group,
two rules, port, VM, floating IP. Say which references connect them,
e.g. the port uses the security group's id, the floating IP attaches
to the port. A small diagram or text arrows is fine.]

### Design choices
- Why no default for project_network, ssh_allowed_cidr, student_name: [...]
- What the validation rules catch: [...]
- How cloud-init ordering is handled (defer: true): [...]

## 2. Deployment
Prediction (before plan): [...]
Result: ![plan](docs/screenshots/01-plan.png)
![apply](docs/screenshots/02-apply.png)
![page](docs/screenshots/03-browser.png)
![instance and security group in web UI](docs/screenshots/04-webui.png)

## 3. Experiment 1: Change
### Option A
**Prediction:** [I predict that the VM will be destroyed and re-created, because every other assignment before this has worked on a similar basis where the backend would have to be deleted so the app would repair itself. I don't think the public ip will change, as it should be the same-]
**Result:** ![plan](docs/screenshots/05-...png) ![result](docs/screenshots/06-...png)
**Explanation:** [answer the guide's questions]

## 4. Experiment 2: Drift
### Part 1: deleted rule
**Prediction:** [...] **Result:** [...] **Explanation:** [...]
### Part 2: added rule
**Prediction:** [...] **Result:** [...] **Explanation:** [...]
### Why the difference
[Think about what the state file tracks.]

## 5. Experiment 3: Destroy and re-create
**Prediction:** [count, order, IP] 
**Result:** ![destroy](docs/screenshots/08-destroy.png) ![rebuild](docs/screenshots/09-rebuild.png)
**Explanation:** [...]  Rebuild time: [...] vs. Week 1 manual: [...]

## 6. Reflection: manual (Week 1) vs. code (Week 7)
Effort: [...]  Repeatability: [...]  Security: [...]
When each makes sense: [...]
[Use real observations from your own work, e.g. how long each took.]

## 7. Problems encountered and solutions
| Problem | Solution |
|---|---|
| Project folder created in C:\Windows\System32 (admin terminal) | Moved it to my user folder, used a non-admin terminal |
| `tofu.init` not recognized | Typo, needed a space: `tofu init` |
| `git push` failed: src refspec main | [what you did] |
| [your others...] | [...] |