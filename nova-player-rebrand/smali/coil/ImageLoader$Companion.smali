.class public final Lcoil/ImageLoader$Companion;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/ImageLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/ImageLoader$Companion;

    invoke-direct {v0}, Lcoil/ImageLoader$Companion;-><init>()V

    sput-object v0, Lcoil/ImageLoader$Companion;->$$INSTANCE:Lcoil/ImageLoader$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    new-instance v0, Lcoil/ImageLoader$Builder;

    invoke-direct {v0, p1}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcoil/ImageLoader$Builder;->build()Lcoil/ImageLoader;

    move-result-object p1

    return-object p1
.end method
