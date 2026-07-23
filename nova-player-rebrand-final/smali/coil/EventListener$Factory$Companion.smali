.class public final Lcoil/EventListener$Factory$Companion;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/EventListener$Factory$Companion;


# direct methods
.method public static synthetic $r8$lambda$C-6xa3wyJ6OYarey6id6r7qvp2Y(Lcoil/EventListener;Lcoil/request/ImageRequest;)Lcoil/EventListener;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcoil/EventListener$Factory$Companion;->invoke$lambda-0(Lcoil/EventListener;Lcoil/request/ImageRequest;)Lcoil/EventListener;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/EventListener$Factory$Companion;

    invoke-direct {v0}, Lcoil/EventListener$Factory$Companion;-><init>()V

    sput-object v0, Lcoil/EventListener$Factory$Companion;->$$INSTANCE:Lcoil/EventListener$Factory$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda-0(Lcoil/EventListener;Lcoil/request/ImageRequest;)Lcoil/EventListener;
    .locals 1

    .line 0
    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final create(Lcoil/EventListener;)Lcoil/EventListener$Factory;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcoil/EventListener$Factory$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcoil/EventListener$Factory$Companion$$ExternalSyntheticLambda0;-><init>(Lcoil/EventListener;)V

    return-object v0
.end method
