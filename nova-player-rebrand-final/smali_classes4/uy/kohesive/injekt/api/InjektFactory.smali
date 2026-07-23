.class public interface abstract Luy/kohesive/injekt/api/InjektFactory;
.super Ljava/lang/Object;
.source "Factory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u0006J-\u0010\u0007\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\tH&\u00a2\u0006\u0002\u0010\nJ\'\u0010\u0007\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u0002H\u0003H&\u00a2\u0006\u0002\u0010\u000bJ!\u0010\u000c\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010\u0006J1\u0010\r\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001\"\u0008\u0008\u0001\u0010\u000e*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u0002H\u000eH&\u00a2\u0006\u0002\u0010\u000bJ?\u0010\u0010\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001\"\u0008\u0008\u0001\u0010\u000e*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u0002H\u000e2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\tH&\u00a2\u0006\u0002\u0010\u0011J9\u0010\u0010\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001\"\u0008\u0008\u0001\u0010\u000e*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u0002H\u000e2\u0006\u0010\u0008\u001a\u0002H\u0003H&\u00a2\u0006\u0002\u0010\u0012J3\u0010\u0013\u001a\u0004\u0018\u0001H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001\"\u0008\u0008\u0001\u0010\u000e*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u0002H\u000eH&\u00a2\u0006\u0002\u0010\u000bJ7\u0010\u0014\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0015*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00052\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0018H&\u00a2\u0006\u0002\u0010\u0019J\'\u0010\u0014\u001a\u0002H\u0003\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u001bH&\u00a2\u0006\u0002\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Luy/kohesive/injekt/api/InjektFactory;",
        "",
        "getInstance",
        "R",
        "forType",
        "Ljava/lang/reflect/Type;",
        "(Ljava/lang/reflect/Type;)Ljava/lang/Object;",
        "getInstanceOrElse",
        "default",
        "Lkotlin/Function0;",
        "(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;",
        "getInstanceOrNull",
        "getKeyedInstance",
        "K",
        "key",
        "getKeyedInstanceOrElse",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "getKeyedInstanceOrNull",
        "getLogger",
        "T",
        "expectedLoggerType",
        "forClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;",
        "byName",
        "",
        "(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;",
        "injekt-api-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract getInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TR;)TR;"
        }
    .end annotation
.end method

.method public abstract getInstanceOrElse(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract getInstanceOrNull(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract getKeyedInstance(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;)TR;"
        }
    .end annotation
.end method

.method public abstract getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;TR;)TR;"
        }
    .end annotation
.end method

.method public abstract getKeyedInstanceOrElse(Ljava/lang/reflect/Type;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract getKeyedInstanceOrNull(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "TK;)TR;"
        }
    .end annotation
.end method

.method public abstract getLogger(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;)TR;"
        }
    .end annotation
.end method

.method public abstract getLogger(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation
.end method
