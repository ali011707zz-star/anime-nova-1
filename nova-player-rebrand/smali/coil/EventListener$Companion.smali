.class public final Lcoil/EventListener$Companion;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/EventListener$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/EventListener$Companion;

    invoke-direct {v0}, Lcoil/EventListener$Companion;-><init>()V

    sput-object v0, Lcoil/EventListener$Companion;->$$INSTANCE:Lcoil/EventListener$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
