.class final Lcom/google/android/gms/internal/consent_sdk/zzrh;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzsb;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/consent_sdk/zzro;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzrh;->zza:Lcom/google/android/gms/internal/consent_sdk/zzro;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzrg;

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqi;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqi;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzpc;->$r8$clinit:I

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/consent_sdk/zzro;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzrh;->zza:Lcom/google/android/gms/internal/consent_sdk/zzro;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzrg;-><init>([Lcom/google/android/gms/internal/consent_sdk/zzro;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzqs;->zzb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzro;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/consent_sdk/zzsa;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzsc;->$r8$clinit:I

    const-class v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->$r8$clinit:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzrh;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzro;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzro;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/consent_sdk/zzrn;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zzrn;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->$r8$clinit:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzrw;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrv;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzrd;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrc;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsc;->zzn()Lcom/google/android/gms/internal/consent_sdk/zzsp;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zzrn;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqd;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqb;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzrm;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrl;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/consent_sdk/zzrt;->zzi(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzrn;Lcom/google/android/gms/internal/consent_sdk/zzrv;Lcom/google/android/gms/internal/consent_sdk/zzrc;Lcom/google/android/gms/internal/consent_sdk/zzsp;Lcom/google/android/gms/internal/consent_sdk/zzqb;Lcom/google/android/gms/internal/consent_sdk/zzrl;)Lcom/google/android/gms/internal/consent_sdk/zzrt;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/android/gms/internal/consent_sdk/zzpc;->$r8$clinit:I

    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsc;->zzn()Lcom/google/android/gms/internal/consent_sdk/zzsp;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqd;->zza()Lcom/google/android/gms/internal/consent_sdk/zzqb;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/consent_sdk/zzrn;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrq;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzi(Lcom/google/android/gms/internal/consent_sdk/zzsp;Lcom/google/android/gms/internal/consent_sdk/zzqb;Lcom/google/android/gms/internal/consent_sdk/zzrq;)Lcom/google/android/gms/internal/consent_sdk/zzru;

    move-result-object p1

    return-object p1
.end method
