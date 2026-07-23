.class public interface abstract Lcoil/EventListener$Factory;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/EventListener$Factory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/EventListener$Factory$Companion;

.field public static final NONE:Lcoil/EventListener$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcoil/EventListener$Factory$Companion;->$$INSTANCE:Lcoil/EventListener$Factory$Companion;

    sput-object v0, Lcoil/EventListener$Factory;->Companion:Lcoil/EventListener$Factory$Companion;

    .line 174
    sget-object v1, Lcoil/EventListener;->NONE:Lcoil/EventListener;

    invoke-virtual {v0, v1}, Lcoil/EventListener$Factory$Companion;->create(Lcoil/EventListener;)Lcoil/EventListener$Factory;

    move-result-object v0

    sput-object v0, Lcoil/EventListener$Factory;->NONE:Lcoil/EventListener$Factory;

    return-void
.end method


# virtual methods
.method public abstract create(Lcoil/request/ImageRequest;)Lcoil/EventListener;
.end method
