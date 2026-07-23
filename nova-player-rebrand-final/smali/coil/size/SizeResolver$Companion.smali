.class public final Lcoil/size/SizeResolver$Companion;
.super Ljava/lang/Object;
.source "SizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/SizeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/size/SizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/size/SizeResolver$Companion;

    invoke-direct {v0}, Lcoil/size/SizeResolver$Companion;-><init>()V

    sput-object v0, Lcoil/size/SizeResolver$Companion;->$$INSTANCE:Lcoil/size/SizeResolver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcoil/size/Size;)Lcoil/size/SizeResolver;
    .locals 1

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcoil/size/RealSizeResolver;

    invoke-direct {v0, p1}, Lcoil/size/RealSizeResolver;-><init>(Lcoil/size/Size;)V

    return-object v0
.end method
