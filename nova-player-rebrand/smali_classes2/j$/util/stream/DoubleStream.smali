.class public interface abstract Lj$/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Lj$/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract B()Z
.end method

.method public abstract a()Lj$/util/stream/DoubleStream;
.end method

.method public abstract average()Lj$/util/B;
.end method

.method public abstract b()Lj$/util/stream/DoubleStream;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
.end method

.method public abstract c()Lj$/util/stream/DoubleStream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract d(Lj$/util/q;)Lj$/util/stream/DoubleStream;
.end method

.method public abstract distinct()Lj$/util/stream/DoubleStream;
.end method

.method public abstract e()Lj$/util/stream/DoubleStream;
.end method

.method public abstract findAny()Lj$/util/B;
.end method

.method public abstract findFirst()Lj$/util/B;
.end method

.method public abstract forEach(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract iterator()Lj$/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract limit(J)Lj$/util/stream/DoubleStream;
.end method

.method public abstract mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;
.end method

.method public abstract max()Lj$/util/B;
.end method

.method public abstract min()Lj$/util/B;
.end method

.method public abstract o()Z
.end method

.method public abstract parallel()Lj$/util/stream/DoubleStream;
.end method

.method public abstract peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/DoubleStream;
.end method

.method public abstract reduce(DLjava/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/B;
.end method

.method public abstract sequential()Lj$/util/stream/DoubleStream;
.end method

.method public abstract skip(J)Lj$/util/stream/DoubleStream;
.end method

.method public abstract sorted()Lj$/util/stream/DoubleStream;
.end method

.method public abstract spliterator()Lj$/util/S;
.end method

.method public abstract sum()D
.end method

.method public abstract summaryStatistics()Lj$/util/x;
.end method

.method public abstract t()Z
.end method

.method public abstract toArray()[D
.end method

.method public abstract u()Lj$/util/stream/LongStream;
.end method

.method public abstract z()Lj$/util/stream/IntStream;
.end method
