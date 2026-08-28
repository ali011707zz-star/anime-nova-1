package io.wax911.support.base.dao;

/* compiled from: RoomConverter.kt */
/* loaded from: classes.dex */
public interface RoomConverter<T> {
    T fromDatabaseValue(String str);

    String toDatabaseValue(T t10);
}
