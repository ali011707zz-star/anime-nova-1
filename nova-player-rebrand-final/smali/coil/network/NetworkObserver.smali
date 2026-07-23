.class public interface abstract Lcoil/network/NetworkObserver;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/network/NetworkObserver$Companion;,
        Lcoil/network/NetworkObserver$Listener;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/network/NetworkObserver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/network/NetworkObserver$Companion;->$$INSTANCE:Lcoil/network/NetworkObserver$Companion;

    sput-object v0, Lcoil/network/NetworkObserver;->Companion:Lcoil/network/NetworkObserver$Companion;

    return-void
.end method


# virtual methods
.method public abstract isOnline()Z
.end method

.method public abstract shutdown()V
.end method
