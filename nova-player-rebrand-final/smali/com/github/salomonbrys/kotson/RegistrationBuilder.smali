.class public interface abstract Lcom/github/salomonbrys/kotson/RegistrationBuilder;
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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u0001H\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008H&J\u001e\u0010\n\u001a\u00020\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0008H&J\"\u0010\r\u001a\u00020\u00062\u0018\u0010\u000e\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u0012\u0004\u0012\u00020\u00100\u0008H&\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/RegistrationBuilder;",
        "T",
        "",
        "R",
        "Lcom/github/salomonbrys/kotson/TypeAdapterBuilder;",
        "createInstances",
        "",
        "creator",
        "Lkotlin/Function1;",
        "Ljava/lang/reflect/Type;",
        "deserialize",
        "deserializer",
        "Lcom/github/salomonbrys/kotson/DeserializerArg;",
        "serialize",
        "serializer",
        "Lcom/github/salomonbrys/kotson/SerializerArg;",
        "Lcom/google/gson/JsonElement;",
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
.method public abstract createInstances(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/reflect/Type;",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract deserialize(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/DeserializerArg;",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract serialize(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/salomonbrys/kotson/SerializerArg<",
            "TT;>;+",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation
.end method
