.class public interface abstract Lcom/tonyodev/fetch2rx/RxFetch;
.super Ljava/lang/Object;
.source "RxFetch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonyodev/fetch2rx/RxFetch$Impl;
    }
.end annotation


# static fields
.field public static final Impl:Lcom/tonyodev/fetch2rx/RxFetch$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/tonyodev/fetch2rx/RxFetch$Impl;->$$INSTANCE:Lcom/tonyodev/fetch2rx/RxFetch$Impl;

    sput-object v0, Lcom/tonyodev/fetch2rx/RxFetch;->Impl:Lcom/tonyodev/fetch2rx/RxFetch$Impl;

    return-void
.end method


# virtual methods
.method public abstract hasActiveDownloads(Z)Lcom/tonyodev/fetch2rx/Convertible;
.end method
