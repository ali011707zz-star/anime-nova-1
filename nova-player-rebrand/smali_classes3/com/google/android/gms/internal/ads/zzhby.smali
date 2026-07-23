.class final synthetic Lcom/google/android/gms/internal/ads/zzhby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhby;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhby;->zza:Lcom/google/android/gms/internal/ads/zzhby;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhaz;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfr;

    sget v0, Lcom/google/android/gms/internal/ads/zzhcf;->$r8$clinit:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhgw;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhr;->zzb(Lcom/google/android/gms/internal/ads/zzhfr;)Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyd;->zzb(Lcom/google/android/gms/internal/ads/zzhfr;)Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object p1

    return-object p1
.end method
