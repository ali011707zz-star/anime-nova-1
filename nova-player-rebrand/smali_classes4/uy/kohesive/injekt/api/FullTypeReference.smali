.class public abstract Luy/kohesive/injekt/api/FullTypeReference;
.super Ljava/lang/Object;
.source "TypeInfo.kt"

# interfaces
.implements Luy/kohesive/injekt/api/TypeReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luy/kohesive/injekt/api/TypeReference<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Luy/kohesive/injekt/api/FullTypeReference;",
        "T",
        "Luy/kohesive/injekt/api/TypeReference;",
        "()V",
        "type",
        "Ljava/lang/reflect/Type;",
        "getType",
        "()Ljava/lang/reflect/Type;",
        "injekt-api-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 38
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "(superClass as Parameter\u2026tActualTypeArguments()[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v1, "javaClass.getGenericSupe\u2026lTypeArguments()[0]\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Luy/kohesive/injekt/api/FullTypeReference;->type:Ljava/lang/reflect/Type;

    return-void

    .line 38
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: TypeReference constructed without actual type information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 34
    iget-object v0, p0, Luy/kohesive/injekt/api/FullTypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
