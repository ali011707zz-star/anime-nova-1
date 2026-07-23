.class public interface abstract Lj$/util/PrimitiveIterator$OfInt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/N;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/N;"
    }
.end annotation


# virtual methods
.method public abstract forEachRemaining(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachRemaining(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract next()Ljava/lang/Integer;
.end method

.method public abstract nextInt()I
.end method
