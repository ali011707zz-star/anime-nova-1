.class final synthetic Lcom/google/android/gms/internal/ads/zzeuj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeuj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeuj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeuj;->zza:Lcom/google/android/gms/internal/ads/zzeuj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeul;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeul;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
