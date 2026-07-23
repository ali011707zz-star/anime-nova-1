.class final synthetic Lcom/google/android/gms/internal/ads/zzhmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhmd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmd;->zza:Lcom/google/android/gms/internal/ads/zzhmd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhmk;

    sget v0, Lcom/google/android/gms/internal/ads/zzhmg;->$r8$clinit:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhma;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhma;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhma;->zza(Lcom/google/android/gms/internal/ads/zzhmk;)Lcom/google/android/gms/internal/ads/zzhma;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhmk;->zzc()I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhma;->zzb(Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhma;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhma;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhma;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhma;->zzd()Lcom/google/android/gms/internal/ads/zzhmb;

    move-result-object p1

    return-object p1
.end method
