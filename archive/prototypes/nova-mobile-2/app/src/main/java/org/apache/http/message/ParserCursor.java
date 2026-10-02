package org.apache.http.message;

import org.apache.http.util.CharArrayBuffer;

/* loaded from: classes2.dex */
public class ParserCursor {
    private final int lowerBound;
    private int pos;
    private final int upperBound;

    public ParserCursor(int i10, int i11) {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i10 <= i11) {
            this.lowerBound = i10;
            this.upperBound = i11;
            this.pos = i10;
            return;
        }
        throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
    }

    public boolean atEnd() {
        return this.pos >= this.upperBound;
    }

    public int getLowerBound() {
        return this.lowerBound;
    }

    public int getPos() {
        return this.pos;
    }

    public int getUpperBound() {
        return this.upperBound;
    }

    public String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(16);
        charArrayBuffer.append('[');
        charArrayBuffer.append(Integer.toString(this.lowerBound));
        charArrayBuffer.append('>');
        charArrayBuffer.append(Integer.toString(this.pos));
        charArrayBuffer.append('>');
        charArrayBuffer.append(Integer.toString(this.upperBound));
        charArrayBuffer.append(']');
        return charArrayBuffer.toString();
    }

    public void updatePos(int i10) {
        if (i10 >= this.lowerBound) {
            if (i10 <= this.upperBound) {
                this.pos = i10;
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("pos: ");
            stringBuffer.append(i10);
            stringBuffer.append(" > upperBound: ");
            stringBuffer.append(this.upperBound);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("pos: ");
        stringBuffer2.append(i10);
        stringBuffer2.append(" < lowerBound: ");
        stringBuffer2.append(this.lowerBound);
        throw new IndexOutOfBoundsException(stringBuffer2.toString());
    }
}
