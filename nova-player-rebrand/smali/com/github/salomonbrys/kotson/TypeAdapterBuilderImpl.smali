.class public final Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"

# interfaces
.implements Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R::TT;>",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u0001H\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004B*\u0012#\u0010\u0005\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tJ\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010J!\u0010\u0011\u001a\u00020\u00072\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\u0016J\'\u0010\u0013\u001a\u00020\u00072\u001d\u0010\u0012\u001a\u0019\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\r\u00a2\u0006\u0002\u0008\u0008H\u0016R!\u0010\n\u001a\u0015\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\u00a2\u0006\u0002\u0008\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\'\u0010\u000c\u001a\u001b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\r\u00a2\u0006\u0002\u0008\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;",
        "T",
        "",
        "R",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;",
        "init",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "_readFunction",
        "Lcom/google/gson/stream/JsonReader;",
        "_writeFunction",
        "Lkotlin/Function2;",
        "Lcom/google/gson/stream/JsonWriter;",
        "build",
        "Lcom/google/gson/TypeAdapter;",
        "read",
        "function",
        "write",
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
.field private _readFunction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/stream/JsonReader;",
            "+TR;>;"
        }
    .end annotation
.end field

.field private _writeFunction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/google/gson/stream/JsonWriter;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder<",
            "TT;TR;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_readFunction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_writeFunction:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must define both a read and a write function"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$get_readFunction$p(Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_readFunction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$get_writeFunction$p(Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_writeFunction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$set_readFunction$p(Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_readFunction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$set_writeFunction$p(Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_writeFunction:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl$build$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl$build$1;-><init>(Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;)V

    return-object v0
.end method

.method public read(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/stream/JsonReader;",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_readFunction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public write(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/google/gson/stream/JsonWriter;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/github/salomonbrys/kotson/TypeAdapterBuilderImpl;->_writeFunction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
