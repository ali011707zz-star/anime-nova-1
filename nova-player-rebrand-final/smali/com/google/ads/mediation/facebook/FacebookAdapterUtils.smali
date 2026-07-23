.class public final Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;
.super Ljava/lang/Object;
.source "FacebookAdapterUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;->INSTANCE:Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "6.21.0.1"

    return-object v0
.end method
