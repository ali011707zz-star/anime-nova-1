.class public final Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;
.super Ljava/lang/ThreadLocal;
.source "DefaultRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/HashMap<",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "uy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1",
        "Ljava/lang/ThreadLocal;",
        "Ljava/util/HashMap;",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
        "",
        "()V",
        "initialValue",
        "injekt-core-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$threadedValues$1;->initialValue()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Lkotlin/Pair;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
