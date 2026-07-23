.class public interface abstract Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R::TT;>",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u0001H\u00012\u00020\u0002J!\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0002\u0008\tH&J\'\u0010\n\u001a\u00020\u00052\u001d\u0010\u0006\u001a\u0019\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u000b\u00a2\u0006\u0002\u0008\tH&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;",
        "T",
        "",
        "R",
        "read",
        "",
        "function",
        "Lkotlin/Function1;",
        "Lcom/google/gson/stream/JsonReader;",
        "Lkotlin/ExtensionFunctionType;",
        "write",
        "Lkotlin/Function2;",
        "Lcom/google/gson/stream/JsonWriter;",
        "kotson_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# virtual methods
.method public abstract read(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/stream/JsonReader;",
            "+TR;>;)V"
        }
    .end annotation
.end method

.method public abstract write(Lkotlin/jvm/functions/Function2;)V
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
.end method
