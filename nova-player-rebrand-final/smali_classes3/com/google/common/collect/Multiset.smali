.class public interface abstract Lcom/google/common/collect/Multiset;
.super Ljava/lang/Object;
.source "Multiset.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multiset$Entry;
    }
.end annotation


# virtual methods
.method public abstract count(Ljava/lang/Object;)I
.end method

.method public abstract elementSet()Ljava/util/Set;
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public abstract size()I
.end method
