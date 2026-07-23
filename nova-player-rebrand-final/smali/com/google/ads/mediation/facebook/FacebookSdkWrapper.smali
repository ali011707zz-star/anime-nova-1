.class public final Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;
.super Ljava/lang/Object;
.source "FacebookSdkWrapper.kt"


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;->INSTANCE:Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 22
    const-string v0, "6.21.0"

    return-object v0
.end method
