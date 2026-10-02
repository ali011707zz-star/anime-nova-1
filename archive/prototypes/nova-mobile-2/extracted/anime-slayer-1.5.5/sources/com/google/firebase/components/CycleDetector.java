package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
class CycleDetector {

    /* loaded from: classes.dex */
    public static class ComponentNode {
        private final Component<?> component;
        private final Set<ComponentNode> dependencies = new HashSet();
        private final Set<ComponentNode> dependents = new HashSet();

        public ComponentNode(Component<?> component) {
            this.component = component;
        }

        public void addDependency(ComponentNode componentNode) {
            this.dependencies.add(componentNode);
        }

        public void addDependent(ComponentNode componentNode) {
            this.dependents.add(componentNode);
        }

        public Component<?> getComponent() {
            return this.component;
        }

        public Set<ComponentNode> getDependencies() {
            return this.dependencies;
        }

        public boolean isLeaf() {
            return this.dependencies.isEmpty();
        }

        public boolean isRoot() {
            return this.dependents.isEmpty();
        }

        public void removeDependent(ComponentNode componentNode) {
            this.dependents.remove(componentNode);
        }
    }

    /* loaded from: classes.dex */
    public static class Dep {
        private final Class<?> anInterface;
        private final boolean set;

        public boolean equals(Object obj) {
            if (!(obj instanceof Dep)) {
                return false;
            }
            Dep dep = (Dep) obj;
            return dep.anInterface.equals(this.anInterface) && dep.set == this.set;
        }

        public int hashCode() {
            return ((this.anInterface.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.set).hashCode();
        }

        private Dep(Class<?> cls, boolean z10) {
            this.anInterface = cls;
            this.set = z10;
        }
    }

    public static void detect(List<Component<?>> list) {
        Set<ComponentNode> graph = toGraph(list);
        Set<ComponentNode> roots = getRoots(graph);
        int i10 = 0;
        while (!roots.isEmpty()) {
            ComponentNode next = roots.iterator().next();
            roots.remove(next);
            i10++;
            for (ComponentNode componentNode : next.getDependencies()) {
                componentNode.removeDependent(next);
                if (componentNode.isRoot()) {
                    roots.add(componentNode);
                }
            }
        }
        if (i10 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ComponentNode componentNode2 : graph) {
            if (!componentNode2.isRoot() && !componentNode2.isLeaf()) {
                arrayList.add(componentNode2.getComponent());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set<ComponentNode> getRoots(Set<ComponentNode> set) {
        HashSet hashSet = new HashSet();
        for (ComponentNode componentNode : set) {
            if (componentNode.isRoot()) {
                hashSet.add(componentNode);
            }
        }
        return hashSet;
    }

    private static Set<ComponentNode> toGraph(List<Component<?>> list) {
        Set<ComponentNode> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<Component<?>> it2 = list.iterator();
        while (true) {
            if (it2.hasNext()) {
                Component<?> next = it2.next();
                ComponentNode componentNode = new ComponentNode(next);
                for (Class<? super Object> cls : next.getProvidedInterfaces()) {
                    Dep dep = new Dep(cls, !next.isValue());
                    if (!hashMap.containsKey(dep)) {
                        hashMap.put(dep, new HashSet());
                    }
                    Set set2 = (Set) hashMap.get(dep);
                    if (!set2.isEmpty() && !dep.set) {
                        throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                    }
                    set2.add(componentNode);
                }
            } else {
                Iterator it3 = hashMap.values().iterator();
                while (it3.hasNext()) {
                    for (ComponentNode componentNode2 : (Set) it3.next()) {
                        for (Dependency dependency : componentNode2.getComponent().getDependencies()) {
                            if (dependency.isDirectInjection() && (set = (Set) hashMap.get(new Dep(dependency.getInterface(), dependency.isSet()))) != null) {
                                for (ComponentNode componentNode3 : set) {
                                    componentNode2.addDependency(componentNode3);
                                    componentNode3.addDependent(componentNode2);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it4 = hashMap.values().iterator();
                while (it4.hasNext()) {
                    hashSet.addAll((Set) it4.next());
                }
                return hashSet;
            }
        }
    }
}
