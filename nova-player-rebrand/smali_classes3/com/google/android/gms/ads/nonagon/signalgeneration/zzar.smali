.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;

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
    .locals 1

    check-cast p1, Ljava/lang/Exception;

    sget-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;->zza:Ljava/util/List;

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
