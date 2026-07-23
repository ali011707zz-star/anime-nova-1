.class public final Lcom/github/salomonbrys/kotson/SerializerArg;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kotson/SerializerArg$Context;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0015B\u001d\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0010\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J2\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0003\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/SerializerArg;",
        "T",
        "",
        "src",
        "type",
        "Ljava/lang/reflect/Type;",
        "context",
        "Lcom/github/salomonbrys/kotson/SerializerArg$Context;",
        "(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)V",
        "getContext",
        "()Lcom/github/salomonbrys/kotson/SerializerArg$Context;",
        "getSrc",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getType",
        "()Ljava/lang/reflect/Type;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)Lcom/github/salomonbrys/kotson/SerializerArg;",
        "Context",
        "kotson_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field private final context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

.field private final src:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/github/salomonbrys/kotson/SerializerArg$Context;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/github/salomonbrys/kotson/SerializerArg;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;ILjava/lang/Object;)Lcom/github/salomonbrys/kotson/SerializerArg;
    .locals 0

    .line 0
    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kotson/SerializerArg;->copy(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)Lcom/github/salomonbrys/kotson/SerializerArg;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    return-object v0
.end method

.method public final component2()Ljava/lang/reflect/Type;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final component3()Lcom/github/salomonbrys/kotson/SerializerArg$Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    return-object v0
.end method

.method public final copy(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)Lcom/github/salomonbrys/kotson/SerializerArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            "Lcom/github/salomonbrys/kotson/SerializerArg$Context;",
            ")",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "TT;>;"
        }
    .end annotation

    .line 0
    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/github/salomonbrys/kotson/SerializerArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/github/salomonbrys/kotson/SerializerArg;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/github/salomonbrys/kotson/SerializerArg$Context;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/github/salomonbrys/kotson/SerializerArg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/salomonbrys/kotson/SerializerArg;

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    iget-object v1, p1, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    iget-object v1, p1, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    iget-object p1, p1, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContext()Lcom/github/salomonbrys/kotson/SerializerArg$Context;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    return-object v0
.end method

.method public final getSrc()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerializerArg(src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->src:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/salomonbrys/kotson/SerializerArg;->context:Lcom/github/salomonbrys/kotson/SerializerArg$Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
