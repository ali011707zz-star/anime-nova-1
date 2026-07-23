.class public interface abstract Lcoil/fetch/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/Fetcher$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract fetch(Lcoil/bitmap/BitmapPool;Ljava/lang/Object;Lcoil/size/Size;Lcoil/decode/Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract handles(Ljava/lang/Object;)Z
.end method

.method public abstract key(Ljava/lang/Object;)Ljava/lang/String;
.end method
