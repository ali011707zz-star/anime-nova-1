.class public final Lcoil/size/ViewSizeResolver$Companion;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/ViewSizeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/size/ViewSizeResolver$Companion;

    invoke-direct {v0}, Lcoil/size/ViewSizeResolver$Companion;-><init>()V

    sput-object v0, Lcoil/size/ViewSizeResolver$Companion;->$$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcoil/size/ViewSizeResolver$Companion;->create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcoil/size/RealViewSizeResolver;

    invoke-direct {v0, p1, p2}, Lcoil/size/RealViewSizeResolver;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method
