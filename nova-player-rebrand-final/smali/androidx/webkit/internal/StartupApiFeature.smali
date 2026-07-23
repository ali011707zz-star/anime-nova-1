.class public abstract Landroidx/webkit/internal/StartupApiFeature;
.super Ljava/lang/Object;
.source "StartupApiFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/StartupApiFeature$NoFramework;,
        Landroidx/webkit/internal/StartupApiFeature$P;
    }
.end annotation


# static fields
.field private static final sValues:Ljava/util/Set;


# instance fields
.field private final mInternalFeatureValue:Ljava/lang/String;

.field private final mPublicFeatureValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/webkit/internal/StartupApiFeature;->mPublicFeatureValue:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroidx/webkit/internal/StartupApiFeature;->mInternalFeatureValue:Ljava/lang/String;

    .line 71
    sget-object p1, Landroidx/webkit/internal/StartupApiFeature;->sValues:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
