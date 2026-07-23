.class public interface abstract Lj$/util/stream/LongStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Lj$/util/stream/LongStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract A()Lj$/util/stream/IntStream;
.end method

.method public abstract a()Lj$/util/stream/LongStream;
.end method

.method public abstract asDoubleStream()Lj$/util/stream/DoubleStream;
.end method

.method public abstract average()Lj$/util/B;
.end method

.method public abstract b()Lj$/util/stream/LongStream;
.end method

.method public abstract boxed()Lj$/util/stream/Stream;
.end method

.method public abstract c()Lj$/util/stream/LongStream;
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
.end method

.method public abstract count()J
.end method

.method public abstract d(Lj$/util/q;)Lj$/util/stream/LongStream;
.end method

.method public abstract distinct()Lj$/util/stream/LongStream;
.end method

.method public abstract e()Lj$/util/stream/LongStream;
.end method

.method public abstract findAny()Lj$/util/D;
.end method

.method public abstract findFirst()Lj$/util/D;
.end method

.method public abstract forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract iterator()Lj$/util/PrimitiveIterator$OfLong;
.end method

.method public abstract j()Lj$/util/stream/DoubleStream;
.end method

.method public abstract limit(J)Lj$/util/stream/LongStream;
.end method

.method public abstract m()Z
.end method

.method public abstract mapToObj(Ljava/util/function/LongFunction;)Lj$/util/stream/Stream;
.end method

.method public abstract max()Lj$/util/D;
.end method

.method public abstract min()Lj$/util/D;
.end method

.method public abstract parallel()Lj$/util/stream/LongStream;
.end method

.method public abstract peek(Ljava/util/function/LongConsumer;)Lj$/util/stream/LongStream;
.end method

.method public abstract q()Z
.end method

.method public abstract reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava/util/function/LongBinaryOperator;)Lj$/util/D;
.end method

.method public abstract sequential()Lj$/util/stream/LongStream;
.end method

.method public abstract skip(J)Lj$/util/stream/LongStream;
.end method

.method public abstract sorted()Lj$/util/stream/LongStream;
.end method

.method public abstract spliterator()Lj$/util/X;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Lj$/util/A;
.end method

.method public abstract toArray()[J
.end method

.method public abstract w()Z
.end method
