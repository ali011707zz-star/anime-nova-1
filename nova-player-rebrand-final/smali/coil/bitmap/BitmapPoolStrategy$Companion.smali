.class public final Lcoil/bitmap/BitmapPoolStrategy$Companion;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/BitmapPoolStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;

    invoke-direct {v0}, Lcoil/bitmap/BitmapPoolStrategy$Companion;-><init>()V

    sput-object v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Lcoil/bitmap/BitmapPoolStrategy;
    .locals 1

    .line 19
    new-instance v0, Lcoil/bitmap/SizeStrategy;

    invoke-direct {v0}, Lcoil/bitmap/SizeStrategy;-><init>()V

    return-object v0
.end method
