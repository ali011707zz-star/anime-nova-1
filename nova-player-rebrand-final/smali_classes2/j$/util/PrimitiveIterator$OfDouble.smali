.class public interface abstract Lj$/util/PrimitiveIterator$OfDouble;
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

.method public abstract forEachRemaining(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract next()Ljava/lang/Double;
.end method

.method public abstract nextDouble()D
.end method
