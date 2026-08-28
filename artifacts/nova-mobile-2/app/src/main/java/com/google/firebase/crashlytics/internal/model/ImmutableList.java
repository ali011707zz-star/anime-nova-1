package com.google.firebase.crashlytics.internal.model;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class ImmutableList<E> implements List<E>, RandomAccess {
    private final List<E> immutableList;

    private ImmutableList(List<E> list) {
        this.immutableList = Collections.unmodifiableList(list);
    }

    public static <E> ImmutableList<E> from(E... eArr) {
        return new ImmutableList<>(Arrays.asList(eArr));
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e10) {
        return this.immutableList.add(e10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return this.immutableList.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.immutableList.clear();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.immutableList.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.immutableList.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        return this.immutableList.equals(obj);
    }

    @Override // java.util.List
    public E get(int i10) {
        return this.immutableList.get(i10);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.immutableList.hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.immutableList.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.immutableList.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.immutableList.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.immutableList.lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.immutableList.listIterator();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        return this.immutableList.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return this.immutableList.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return this.immutableList.retainAll(collection);
    }

    @Override // java.util.List
    public E set(int i10, E e10) {
        return this.immutableList.set(i10, e10);
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.immutableList.size();
    }

    @Override // java.util.List
    public List<E> subList(int i10, int i11) {
        return this.immutableList.subList(i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return this.immutableList.toArray();
    }

    public static <E> ImmutableList<E> from(List<E> list) {
        return new ImmutableList<>(list);
    }

    @Override // java.util.List
    public void add(int i10, E e10) {
        this.immutableList.add(i10, e10);
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        return this.immutableList.addAll(i10, collection);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i10) {
        return this.immutableList.listIterator(i10);
    }

    @Override // java.util.List
    public E remove(int i10) {
        return this.immutableList.remove(i10);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.immutableList.toArray(tArr);
    }
}
